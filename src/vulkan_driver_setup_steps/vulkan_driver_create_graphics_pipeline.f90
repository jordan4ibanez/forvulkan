module vulkan_driver_create_graphics_pipeline
  use, intrinsic :: iso_c_binding
  use :: vulkan_shader_compiler
  use :: forvulkan
  use :: forvulkan_parameters
  implicit none


contains


  subroutine create_graphics_pipeline(logical_device, vertex_shader_module, fragment_shader_module)
    implicit none

    ! VkDevice
    integer(c_int64_t), intent(in), value :: logical_device
    ! VkShaderModule
    integer(c_int64_t), intent(inout) :: vertex_shader_module
    ! VkShaderModule
    integer(c_int64_t), intent(inout) :: fragment_shader_module

    vertex_shader_module = compile_glsl_shaders(logical_device, "vertex.vert")
    fragment_shader_module = compile_glsl_shaders(logical_device, "fragment.frag")
  

    call vk_destroy_shader_module(logical_device, fragment_shader_module, c_null_ptr)
    call vk_destroy_shader_module(logical_device, vertex_shader_module, c_null_ptr)
  end subroutine create_graphics_pipeline


end module vulkan_driver_create_graphics_pipeline
