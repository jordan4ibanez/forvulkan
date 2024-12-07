module vulkan_driver_create_framebuffers
  use, intrinsic :: iso_c_binding
  use :: forvulkan
  use :: vector
  implicit none


contains


  subroutine create_framebuffers(logical_device, swapchain_framebuffers, swapchain_image_views, render_pass, swapchain_extent)
    implicit none

    type(vk_device), intent(in), value :: logical_device
    ! Vk Framebuffer Vector
    type(vec), intent(inout) :: swapchain_framebuffers
    type(vec), intent(inout) :: swapchain_image_views
    type(vk_render_pass), intent(in), value :: render_pass
    type(vk_extent_2d), intent(in) :: swapchain_extent
    integer(c_int64_t) :: i
    type(vk_image_view), dimension(1), target :: attachments
    type(vk_image_view), pointer :: image_view
    type(vk_framebuffer), pointer :: framebuffer_pointer
    type(vk_framebuffer_create_info), target :: frame_buffer_create_info

    swapchain_framebuffers = new_vec(sizeof(0_8), swapchain_image_views%size())
    call swapchain_framebuffers%resize(swapchain_image_views%size(), 0_8)

    do i = 1,swapchain_framebuffers%size()

      call c_f_pointer(swapchain_image_views%get(i), image_view)

      attachments(1) = image_view

      frame_buffer_create_info%s_type = VK_STRUCTURE_TYPE%FRAMEBUFFER_CREATE_INFO
      frame_buffer_create_info%render_pass = render_pass
      frame_buffer_create_info%attachment_count = 1
      frame_buffer_create_info%p_attachments = c_loc(attachments)
      frame_buffer_create_info%width = swapchain_extent%width
      frame_buffer_create_info%height = swapchain_extent%height
      frame_buffer_create_info%layers = 1

      ! We're pointing this into the array from the driver.
      call c_f_pointer(swapchain_framebuffers%get(i), framebuffer_pointer)

      if (vk_create_framebuffer(logical_device, c_loc(frame_buffer_create_info), c_null_ptr, framebuffer_pointer) /= VK_SUCCESS) then
        error stop "[Vulkan] Error: Failed to create framebuffer."
      end if
    end do
  end subroutine create_framebuffers


end module vulkan_driver_create_framebuffers
