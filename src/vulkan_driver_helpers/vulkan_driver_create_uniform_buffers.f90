module vulkan_driver_create_uniform_buffers
  use, intrinsic :: iso_c_binding
  use :: forvulkan
  use :: vector
  use :: vulkan_driver_uniform_buffer
  use :: vulkan_driver_create_buffer
  implicit none



contains


  subroutine create_uniform_buffers(physical_device, logical_device, MAX_FRAMES_IN_FLIGHT, uniform_buffers, uniform_buffers_memory, uniform_buffers_mapped)
    implicit none

    type(vk_physical_device), intent(in), value :: physical_device
    type(vk_device), intent(in), value :: logical_device
    integer(c_int64_t), intent(in), value :: MAX_FRAMES_IN_FLIGHT
    ! Vk Buffer Vector
    type(vec), intent(inout) :: uniform_buffers
    ! Vk DeviceMemory Vector
    type(vec), intent(inout) :: uniform_buffers_memory
    ! void * Vector (Vector of raw pointers to [currently] uniform_buffer_object)
    type(vec), intent(inout) :: uniform_buffers_mapped
    integer(c_int64_t) :: i
    type(vk_device_size) :: buffer_size
    type(vk_buffer), pointer :: buffer_pointer
    type(vk_device_memory), pointer :: buffer_memory_pointer
    type(c_ptr) :: mapped_buffer_ptr

    buffer_size = vk_device_size(sizeof(uniform_buffer_object()))

    uniform_buffers = new_vec(sizeof(vk_buffer()), MAX_FRAMES_IN_FLIGHT)
    call uniform_buffers%resize(MAX_FRAMES_IN_FLIGHT, vk_buffer())

    uniform_buffers_memory = new_vec(sizeof(vk_device_memory()), MAX_FRAMES_IN_FLIGHT)
    call uniform_buffers_memory%resize(MAX_FRAMES_IN_FLIGHT, vk_device_memory())

    uniform_buffers_mapped = new_vec(buffer_size%data, MAX_FRAMES_IN_FLIGHT)
    call uniform_buffers_mapped%resize(MAX_FRAMES_IN_FLIGHT, c_null_ptr)

    do i = 1,MAX_FRAMES_IN_FLIGHT

      call c_f_pointer(uniform_buffers%get(i), buffer_pointer)
      call c_f_pointer(uniform_buffers_memory%get(i), buffer_memory_pointer)

      call create_buffer(physical_device, logical_device, buffer_size, VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT, ior(VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT, VK_MEMORY_PROPERTY_HOST_COHERENT_BIT), buffer_pointer, buffer_memory_pointer)

      if (vk_map_memory(logical_device, buffer_memory_pointer, vk_device_size(0_8), buffer_size, 0, mapped_buffer_ptr) /= VK_SUCCESS) then
        error stop "[Vulkan] Error: Failed to map uniform buffer memory."
      end if
      ! We got the mapped buffer memory location, set it in the vector. This is an awkard way to do this but my brain is too fried to think about a better way.
      call uniform_buffers_mapped%set(i, mapped_buffer_ptr)
    end do
  end subroutine create_uniform_buffers


end module vulkan_driver_create_uniform_buffers
