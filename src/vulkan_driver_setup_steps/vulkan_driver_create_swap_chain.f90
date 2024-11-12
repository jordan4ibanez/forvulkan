module vulkan_driver_create_swap_chain
  use, intrinsic :: iso_c_binding
  use :: vector
  use :: forvulkan
  use :: forvulkan_parameters
  use :: vulkan_driver_query_swap_chain_support
  implicit none


contains


  subroutine create_swap_chain(physical_device, window_surface)
    implicit none

    ! VkPhysicalDevice
    integer(c_int64_t), intent(in), value :: physical_device
    ! VkSurfaceKHR
    integer(c_int64_t), intent(in), value :: window_surface
    type(forvulkan_swap_chain_support_details), pointer :: swap_chain_support_details
    type(vk_surface_format_khr), pointer :: selected_format_pointer
    ! VkPresentModeKHR
    integer(c_int32_t) :: selected_present_mode
    type(vk_extent_2d) :: selected_extent

    print"(A)","[Vulkan]: Creating swap chain."

    if (.not. query_swap_chain_support(physical_device, window_surface, swap_chain_support_details)) then
      error stop "[Vulkan] Severe Error: This physical device was already tested to have swap chain support, suddenly it does not."
    end if

    selected_format_pointer => select_swap_surface_format(swap_chain_support_details%formats)
    selected_present_mode = select_swap_present_mode(swap_chain_support_details%present_modes)
    selected_extent = select_swap_extent(swap_chain_support_details%capabilities)
  end subroutine create_swap_chain


  function select_swap_surface_format(available_formats) result(selected_format_pointer)
    implicit none

    type(vec), intent(inout) :: available_formats
    integer(c_int64_t) :: i
    type(vk_surface_format_khr), pointer :: available_format_pointer
    type(vk_surface_format_khr), pointer :: selected_format_pointer

    selected_format_pointer => null()

    print"(A)","[Vulkan]: Searching for [BGRA8] surface format availability."

    search: do i = 1,available_formats%size()
      call c_f_pointer(available_formats%get(i), available_format_pointer)

      ! We will prefer this format, BGRA8. But,
      ! TODO: look into RGBA8.
      if (available_format_pointer%format == VK_FORMAT_B8G8R8A8_SRGB .and. available_format_pointer%color_space == VK_COLOR_SPACE_SRGB_NONLINEAR_KHR) then
        allocate(selected_format_pointer)
        selected_format_pointer%color_space = available_format_pointer%color_space
        selected_format_pointer%format = available_format_pointer%format
        print"(A)","[Vulkan]: [BGRA8] surface format is selected."
        return
      end if
    end do search


    ! So, if we didn't find anything:
    ! We will just select the first thing we have available.
    print"(A)","[Vulkan]: Surface format [BGRA8] unavailable. Defaulting selection."

    call c_f_pointer(available_formats%get(1_8), available_format_pointer)
    allocate(selected_format_pointer)
    selected_format_pointer%color_space = available_format_pointer%color_space
    selected_format_pointer%format = available_format_pointer%format
  end function select_swap_surface_format


  function select_swap_present_mode(available_present_modes) result(selected_present_mode)
    implicit none

    ! VkPresentModeKHR
    type(vec) :: available_present_modes
    ! VkPresentModeKHR
    integer(c_int32_t) :: selected_present_mode
    integer(c_int32_t), pointer :: available_present_mode_pointer
    integer(c_int64_t) :: i

    print"(A)","[Vulkan]: Searching for [mailbox] present mode."

    ! We're going to try to find mailbox support.
    do i = 1,available_present_modes%size()
      call c_f_pointer(available_present_modes%get(i), available_present_mode_pointer)
      if (available_present_mode_pointer == VK_PRESENT_MODE_MAILBOX_KHR) then
        selected_present_mode = available_present_mode_pointer
        print"(A)","[Vulkan]: [mailbox] present mode is selected."
        return
      end if
    end do

    ! If we didn't find mailbox support, just use FIFO.

    print"(A)","[Vulkan]: [mailbox] present mode not available. Defaulting to [fifo]"

    selected_present_mode = VK_PRESENT_MODE_FIFO_KHR
  end function select_swap_present_mode


  function select_swap_extent(capabilities) result(selected_extent)
    implicit none

    type(vk_surface_capabilities_khr), intent(in) :: capabilities
    type(vk_extent_2d) :: selected_extent

    ! uint32 max goes into negatives using direct casting to int32.
    ! In fact, it just equals -1. :)
    if (capabilities%current_extent%width == -1) then
      print*,"floop"
    end if

  end function select_swap_extent


end module vulkan_driver_create_swap_chain
