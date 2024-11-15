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
    type(vk_pipeline_shader_stage_create_info) :: vertex_shader_stage_info, fragment_shader_stage_info
    character(len = 5, kind = c_char), target :: vert_p_name, frag_p_name
    type(vk_pipeline_shader_stage_create_info), dimension(2) :: shader_stages

    vertex_shader_module = compile_glsl_shaders(logical_device, "vertex.vert")
    fragment_shader_module = compile_glsl_shaders(logical_device, "fragment.frag")

    vertex_shader_stage_info%s_type = VK_STRUCTURE_TYPE%PIPELINE%SHADER_STAGE_CREATE_INFO
    vertex_shader_stage_info%stage = VK_SHADER_STAGE_VERTEX_BIT
    vertex_shader_stage_info%module = vertex_shader_module
    vert_p_name = "main"//achar(0)
    vertex_shader_stage_info%p_name = c_loc(vert_p_name)

    fragment_shader_stage_info%s_type = VK_STRUCTURE_TYPE%PIPELINE%SHADER_STAGE_CREATE_INFO
    fragment_shader_stage_info%stage = VK_SHADER_STAGE_FRAGMENT_BIT
    fragment_shader_stage_info%module = fragment_shader_module
    frag_p_name = "main"//achar(0)
    fragment_shader_stage_info%p_name = c_loc(frag_p_name)

    shader_stages = [vertex_shader_stage_info, fragment_shader_stage_info]


    call vk_destroy_shader_module(logical_device, fragment_shader_module, c_null_ptr)
    call vk_destroy_shader_module(logical_device, vertex_shader_module, c_null_ptr)
  end subroutine create_graphics_pipeline


end module vulkan_driver_create_graphics_pipeline
