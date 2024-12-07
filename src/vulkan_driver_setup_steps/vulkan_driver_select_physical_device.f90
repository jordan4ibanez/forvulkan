module vulkan_driver_select_physical_device
  use :: forvulkan
  use :: vector
  use :: integer32_set
  use :: vulkan_driver_find_queue_families
  use :: string_f90
  use :: vulkan_driver_create_physical_device_extensions
  use :: vulkan_driver_query_swapchain_support
  use, intrinsic :: iso_c_binding
  implicit none

  ! todo: re-tool this so we can query multiple devices and rank them.

contains


  subroutine select_physical_device(vulkan_instance, physical_device, window_surface)
    implicit none

    type(vk_instance), intent(in), value :: vulkan_instance
    type(vk_physical_device), intent(inout) :: physical_device
    type(vk_surface_khr), intent(in), value :: window_surface
    integer(c_int32_t) :: device_count, i
    ! c_int64_t [VkPhysicalDevice]
    type(vec) :: available_devices
    type(vk_physical_device), pointer :: physical_device_pointer
    character(len = :, kind = c_char), pointer :: device_name

    print"(A)","[Vulkan]: Selecting physical device."

    ! First, we will get the available devices from Vulkan.
    if (vk_enumerate_physical_devices(vulkan_instance, device_count, c_null_ptr) /= VK_SUCCESS) then
      error stop "[Vulkan] Error: Failed to enumerate physical devices."
    end if

    if (device_count == 0) then
      ! todo: in Formine we will make this clean up then run the OpenGL driver. :)
      error stop "[Vulkan] Error: No GPU with Vulkan support available."
    end if

    ! Now, create the vector to store the data.
    available_devices = new_vec(sizeof(physical_device), int(device_count, c_int64_t))
    call available_devices%resize(int(device_count, c_int64_t), physical_device)

    ! Here we're passing in the underlying C array.
    if (vk_enumerate_physical_devices(vulkan_instance, device_count, available_devices%get(1_8)) /= VK_SUCCESS) then
      error stop "[Vulkan] Error: Failed to enumerate physical devices."
    end if

    ! Let's find a device that's suitable.
    device_search: do i = 1,int(available_devices%size())
      ! We're inlining transfering the device pointer from the interal C array into Fortran.
      call c_f_pointer(available_devices%get(int(i, c_int64_t)), physical_device_pointer)

      ! We found it, woo. That's our physical device.
      ! todo: Make a menu option to select another physical device.
      if (device_is_suitable(physical_device_pointer, window_surface, device_name)) then
        physical_device = physical_device_pointer
        exit device_search
      end if
    end do device_search

    if (physical_device%data == VK_NULL_HANDLE) then
      error stop "[Vulkan] Error: No suitable GPU available."
    else
      ! todo: can put these devices in some kind of array instead of just destroying the pointers.
      print"(A)","[Vulkan]: Using physical device ["//device_name//"]"
      deallocate(device_name)
    end if

    call available_devices%destroy()
  end subroutine select_physical_device


  function device_is_suitable(physical_device_pointer, window_surface, device_name) result(suitable)
    implicit none

    type(vk_physical_device), intent(inout), pointer :: physical_device_pointer
    type(vk_surface_khr), intent(in), value :: window_surface
    character(len = :, kind = c_char), intent(inout), pointer :: device_name
    type(forvulkan_queue_family_indices) :: queue_family_indices
    logical(c_bool) :: suitable
    type(vk_physical_device_properties), pointer :: device_properties
    type(vk_physical_device_features), pointer :: device_features

    suitable = .false.

    allocate(device_properties)
    call vk_get_physical_device_properties(physical_device_pointer, c_loc(device_properties))

    allocate(device_features)
    call vk_get_physical_device_features(physical_device_pointer, c_loc(device_features))

    ! Check if we have the bare minimum to run with.
    ! todo: score GPUs.
    ! todo: device_properties%device_type == VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU .and.
    ! todo: https://vulkan-tutorial.com/Drawing_a_triangle/Setup/Physical_devices_and_queue_families
    ! todo: Base device suitability checks
    ! if (device_features%geometry_shader == VK_TRUE) then
    suitable = .true.
    ! end if

    ! Let us convert the extension name from a char array into a string.
    !! fixme: This is a memory leak when we start checking multiple gpus. :D
    device_name => character_array_to_string_pointer(device_properties%device_name)

    ! Check our queue families.
    queue_family_indices = find_queue_families(physical_device_pointer, window_surface)

    print"(A)","[Vulkan]: Found physical device ["//device_name//"]"

    ! Now, if we have all needed components, we have our physical device!
    if (queue_family_indices%graphics_family_has_value .and. queue_family_indices%present_family_has_value) then
      print"(A)","[Vulkan]: Device has graphical queue family and present support."
    else
      ! No if else, we want to warn about every unsupported queue family.
      if (.not. queue_family_indices%graphics_family_has_value) then
        print"(A)", "[Vulkan]: Device has no graphical queue family."
      end if
      if (.not. queue_family_indices%present_family_has_value) then
        print"(A)", "[Vulkan]: Device has no present queue family."
      end if

      suitable = .false.
    end if

    if (.not. check_device_extension_support(physical_device_pointer, window_surface)) then
      !! FIXME: this needs to list which extension!
      print"(A)", "[Vulkan]: Device is missing extension support."
      suitable = .false.
    end if

    deallocate(device_properties)
    deallocate(device_features)
  end function device_is_suitable


  function check_device_extension_support(physical_device, window_surface) result(has_support)
    implicit none

    type(vk_physical_device), intent(in), value :: physical_device
    type(vk_surface_khr), intent(in), value :: window_surface
    type(forvulkan_swapchain_support_details) :: swapchain_support_details
    logical(c_bool) :: has_support
    integer(c_int32_t) :: extension_count
    ! VkExtensionProperties
    type(vec) :: available_extensions
    ! character(:)
    type(vec) :: required_device_extensions
    type(vk_extension_properties), pointer :: extension_properties
    character(len = :, kind = c_char), pointer :: required_extension, extension_name
    integer(c_int32_t) :: i, j
    type(c_ptr), pointer :: raw_c_ptr_ptr
    logical(c_bool) :: found

    has_support = .false.

    ! First we create our required device extensions.
    call create_required_physical_device_extensions(required_device_extensions)

    ! Now, let us store the vector of available device extensions.
    if (vk_enumerate_device_extension_properties(physical_device, c_null_ptr, extension_count, c_null_ptr) /= VK_SUCCESS) then
      error stop "[Vulkan] Error: Failed to enumerate device extension properties."
    end if

    allocate(extension_properties)
    available_extensions = new_vec(sizeof(extension_properties), 0_8)
    call available_extensions%resize(int(extension_count, c_int64_t), extension_properties)
    deallocate(extension_properties)

    ! This is pointing the function straight into the internal C array of the vector.
    if (vk_enumerate_device_extension_properties(physical_device, c_null_ptr, extension_count, available_extensions%get(1_8)) /= VK_SUCCESS) then
      error stop "[Vulkan] Error: Failed to enumerate device extension properties."
    end if


    ! Check we have all required device extensions.
    do i = 1,int(required_device_extensions%size())

      ! Shoot that char * straight into a fortran string.
      call c_f_pointer(required_device_extensions%get(int(i, c_int64_t)), raw_c_ptr_ptr)
      required_extension => string_from_c(raw_c_ptr_ptr)

      found = .false.

      ! Now we need to see if we have this one in there.
      extension_search: do j = 1,int(available_extensions%size())
        call c_f_pointer(available_extensions%get(int(j, c_int64_t)), extension_properties)

        ! Let us convert the extension name from a char array into a string.
        extension_name => character_array_to_string_pointer(extension_properties%extension_name)

        if (required_extension == extension_name) then
          found = .true.
          deallocate(extension_name)
          print"(A)","[Vulkan]: Found required physical device extension ["//required_extension//"]"
          exit extension_search
        end if

        deallocate(extension_name)
      end do extension_search

      ! Found will continue to be false or true when we're done with this loop.
      ! If we're missing something, continue to let it be false so we can return if it has support.
      ! If we found everything, this will always finish this loop as true.
      if (.not. found) then
        print"(A)","[Vulkan]: Physical device extension ["//required_extension//"] is missing."
        exit
      end if
    end do

    !! fixme: this thing needs a GC.
    call required_device_extensions%destroy()

    call available_extensions%destroy()

    has_support = found

    ! So now we must query the swapchain support.
    ! If it has no swapchain support, then we can't use this device.
    ! But we're only going to run this if the device passed all the other checks.
    if (has_support) then
      has_support = query_swapchain_support(physical_device, window_surface, swapchain_support_details)

      call swapchain_support_details%formats%destroy()
      call swapchain_support_details%present_modes%destroy()

      if (.not. has_support) then
        print"(A)", "[Vulkan]: Physical device is missing swapchain support. Skipping."
      end if
    end if
  end function check_device_extension_support


end module vulkan_driver_select_physical_device
