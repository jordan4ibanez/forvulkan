module vulkan_driver_create_instance
  use, intrinsic :: iso_c_binding
  use :: forvulkan
  use :: forvulkan_parameters
  use :: vulkan_driver_create_debug_messenger
  use :: vector
  use :: string_f90
  implicit none


contains


  subroutine create_vulkan_instance_create_info(vulkan_create_info, app_info, required_extensions, required_validation_layers, before_init_messenger_create_info, DEBUG_MODE)
    implicit none

    type(vk_instance_create_info), intent(inout), pointer :: vulkan_create_info
    type(vk_application_info), intent(in), pointer :: app_info
    type(vec), intent(inout) :: required_extensions
    type(vec), intent(inout) :: required_validation_layers
    type(vk_debug_utils_messenger_create_info_ext), intent(inout), target :: before_init_messenger_create_info
    logical(c_bool), intent(in), value :: DEBUG_MODE

    print"(A)","[Vulkan]: Creating create info."

    allocate(vulkan_create_info)

    vulkan_create_info%flags = or(vulkan_create_info%flags, VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR)

    vulkan_create_info%s_type = VK_STRUCTURE_TYPE%INSTANCE_CREATE_INFO
    vulkan_create_info%p_application_info = c_loc(app_info)

    vulkan_create_info%enabled_extension_count = int(required_extensions%size())
    !? Note: This basically turns the vector into a pointer array.
    vulkan_create_info%pp_enabled_extension_names = required_extensions%get(1_8)

    if (DEBUG_MODE) then
      ! Passing the underlying char** array in.
      vulkan_create_info%enabled_layer_count = int(required_validation_layers%size())
      vulkan_create_info%pp_enabled_layer_names = required_validation_layers%get(1_8)

      call create_messenger_struct(before_init_messenger_create_info, DEBUG_MODE)
      vulkan_create_info%p_next = c_loc(before_init_messenger_create_info)

    else
      vulkan_create_info%enabled_layer_count = 0
    end if
  end subroutine create_vulkan_instance_create_info


  subroutine create_vulkan_instance(vulkan_create_info, vulkan_instance)
    implicit none

    ! VkInstanceCreateInfo
    type(vk_instance_create_info), intent(in), target :: vulkan_create_info
    ! VkInstance
    integer(c_int64_t), intent(inout) :: vulkan_instance
    integer(c_int) :: result


    print"(A)", "[Vulkan]: Creating instance."

    result = vk_create_instance(c_loc(vulkan_create_info), c_null_ptr, vulkan_instance)

    if (result /= VK_SUCCESS) then
      ! Shove driver check in.
      if (result == VK_ERROR_INCOMPATIBLE_DRIVER) then
        error stop "[Vulkan] Error: Failed to create Vulkan instance. Incompatible driver. Error code: ["//int_to_string(result)//"]"
      end if
      error stop "[Vulkan] Error: Failed to create Vulkan instance. Error code: ["//int_to_string(result)//"]"
    end if
  end subroutine create_vulkan_instance


end module vulkan_driver_create_instance
