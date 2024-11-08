module forvulkan_parameters
  use, intrinsic :: iso_c_binding
  implicit none

  ! todo: dump all these parameters into forvulkan.f90
  !! This is only a temp.

  ! https://github.com/KhronosGroup/Vulkan-Headers/blob/main/include/vulkan/vulkan_core.h


  !* PARAMETERS. ===============================================================

  integer(c_int), parameter, public :: VK_API_VERSION_1_0 = 4194304
  integer(c_int), parameter, public :: VK_API_VERSION_1_1 = 4198400
  integer(c_int), parameter, public :: VK_API_VERSION_1_2 = 4202496
  integer(c_int), parameter, public :: VK_API_VERSION_1_3 = 4206592

  integer(c_int), parameter, public :: VK_NULL_HANDLE = 0
  integer(c_int), parameter, public :: VK_ATTACHMENT_UNUSED = not(0)
  integer(c_int), parameter, public :: VK_FALSE = 0
  real(c_float), parameter, public :: VK_LOD_CLAMP_NONE = 1000.0
  integer(c_int), parameter, public :: VK_QUEUE_FAMILY_IGNORED = not(0)
  integer(c_int), parameter, public :: VK_REMAINING_ARRAY_LAYERS = not(0)
  integer(c_int), parameter, public :: VK_REMAINING_MIP_LEVELS = not(0)
  integer(c_int), parameter, public :: VK_SUBPASS_EXTERNAL = not(0)
  integer(c_int), parameter, public :: VK_TRUE = 1
  integer(c_long_long), parameter, public :: VK_WHOLE_SIZE = not(0_8)
  integer(c_int), parameter, public :: VK_MAX_MEMORY_TYPES = 32
  integer(c_int), parameter, public :: VK_MAX_PHYSICAL_DEVICE_NAME_SIZE = 256
  integer(c_int), parameter, public :: VK_UUID_SIZE = 16
  integer(c_int), parameter, public :: VK_MAX_EXTENSION_NAME_SIZE = 256
  integer(c_int), parameter, public :: VK_MAX_DESCRIPTION_SIZE = 256
  integer(c_int), parameter, public :: VK_MAX_MEMORY_HEAPS = 16

  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_TYPE_GENERAL_BIT_EXT = int(z"00000001")
  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_TYPE_VALIDATION_BIT_EXT = int(z"00000002")
  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_TYPE_PERFORMANCE_BIT_EXT = int(z"00000004")
  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_TYPE_DEVICE_ADDRESS_BINDING_BIT_EXT = int(z"00000008")


  !? VkPhysicalDeviceType. ==========================================================================


  integer(c_int), parameter, public :: VK_PHYSICAL_DEVICE_TYPE_OTHER = 0
  integer(c_int), parameter, public :: VK_PHYSICAL_DEVICE_TYPE_INTEGRATED_GPU = 1
  integer(c_int), parameter, public :: VK_PHYSICAL_DEVICE_TYPE_DISCRETE_GPU = 2
  integer(c_int), parameter, public :: VK_PHYSICAL_DEVICE_TYPE_VIRTUAL_GPU = 3
  integer(c_int), parameter, public :: VK_PHYSICAL_DEVICE_TYPE_CPU = 4


  !? VkDebugUtilsMessageSeverityFlagBitsEXT. ==========================================================================


  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_SEVERITY_VERBOSE_BIT_EXT = int(z"00000001")
  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT = int(z"00000010")
  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT = int(z"00000100")
  integer(c_int), parameter, public :: VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT = int(z"00001000")


  !? VkResult. ==========================================================================


  integer(c_int), parameter, public :: VK_SUCCESS = 0
  integer(c_int), parameter, public :: VK_NOT_READY = 1
  integer(c_int), parameter, public :: VK_TIMEOUT = 2
  integer(c_int), parameter, public :: VK_EVENT_SET = 3
  integer(c_int), parameter, public :: VK_EVENT_RESET = 4
  integer(c_int), parameter, public :: VK_INCOMPLETE = 5
  integer(c_int), parameter, public :: VK_ERROR_OUT_OF_HOST_MEMORY = -1
  integer(c_int), parameter, public :: VK_ERROR_OUT_OF_DEVICE_MEMORY = -2
  integer(c_int), parameter, public :: VK_ERROR_INITIALIZATION_FAILED = -3
  integer(c_int), parameter, public :: VK_ERROR_DEVICE_LOST = -4
  integer(c_int), parameter, public :: VK_ERROR_MEMORY_MAP_FAILED = -5
  integer(c_int), parameter, public :: VK_ERROR_LAYER_NOT_PRESENT = -6
  integer(c_int), parameter, public :: VK_ERROR_EXTENSION_NOT_PRESENT = -7
  integer(c_int), parameter, public :: VK_ERROR_FEATURE_NOT_PRESENT = -8
  integer(c_int), parameter, public :: VK_ERROR_INCOMPATIBLE_DRIVER = -9
  integer(c_int), parameter, public :: VK_ERROR_TOO_MANY_OBJECTS = -10
  integer(c_int), parameter, public :: VK_ERROR_FORMAT_NOT_SUPPORTED = -11
  integer(c_int), parameter, public :: VK_ERROR_FRAGMENTED_POOL = -12
  integer(c_int), parameter, public :: VK_ERROR_UNKNOWN = -13
  ! Provided by VK_VERSION_1_1
  integer(c_int), parameter, public :: VK_ERROR_OUT_OF_POOL_MEMORY = -1000069000
  ! Provided by VK_VERSION_1_1
  integer(c_int), parameter, public :: VK_ERROR_INVALID_EXTERNAL_HANDLE = -1000072003
  ! Provided by VK_VERSION_1_2
  integer(c_int), parameter, public :: VK_ERROR_FRAGMENTATION = -1000161000
  ! Provided by VK_VERSION_1_2
  integer(c_int), parameter, public :: VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS = -1000257000
  ! Provided by VK_VERSION_1_3
  integer(c_int), parameter, public :: VK_PIPELINE_COMPILE_REQUIRED = 1000297000
  ! Provided by VK_KHR_surface
  integer(c_int), parameter, public :: VK_ERROR_SURFACE_LOST_KHR = -1000000000
  ! Provided by VK_KHR_surface
  integer(c_int), parameter, public :: VK_ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001
  ! Provided by VK_KHR_swapchain
  integer(c_int), parameter, public :: VK_SUBOPTIMAL_KHR = 1000001003
  ! Provided by VK_KHR_swapchain
  integer(c_int), parameter, public :: VK_ERROR_OUT_OF_DATE_KHR = -1000001004
  ! Provided by VK_KHR_display_swapchain
  integer(c_int), parameter, public :: VK_ERROR_INCOMPATIBLE_DISPLAY_KHR = -1000003001
  ! Provided by VK_EXT_debug_report
  integer(c_int), parameter, public :: VK_ERROR_VALIDATION_FAILED_EXT = -1000011001
  ! Provided by VK_NV_glsl_shader
  integer(c_int), parameter, public :: VK_ERROR_INVALID_SHADER_NV = -1000012000
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR = -1000023000
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR = -1000023001
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR = -1000023002
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR = -1000023003
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR = -1000023004
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR = -1000023005
  ! Provided by VK_EXT_image_drm_format_modifier
  integer(c_int), parameter, public :: VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT = -1000158000
  ! Provided by VK_KHR_global_priority
  integer(c_int), parameter, public :: VK_ERROR_NOT_PERMITTED_KHR = -1000174001
  ! Provided by VK_EXT_full_screen_exclusive
  integer(c_int), parameter, public :: VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT = -1000255000
  ! Provided by VK_KHR_deferred_host_operations
  integer(c_int), parameter, public :: VK_THREAD_IDLE_KHR = 1000268000
  ! Provided by VK_KHR_deferred_host_operations
  integer(c_int), parameter, public :: VK_THREAD_DONE_KHR = 1000268001
  ! Provided by VK_KHR_deferred_host_operations
  integer(c_int), parameter, public :: VK_OPERATION_DEFERRED_KHR = 1000268002
  ! Provided by VK_KHR_deferred_host_operations
  integer(c_int), parameter, public :: VK_OPERATION_NOT_DEFERRED_KHR = 1000268003
  ! Provided by VK_KHR_video_encode_queue
  integer(c_int), parameter, public :: VK_ERROR_INVALID_VIDEO_STD_PARAMETERS_KHR = -1000299000
  ! Provided by VK_EXT_image_compression_control
  integer(c_int), parameter, public :: VK_ERROR_COMPRESSION_EXHAUSTED_EXT = -1000338000
  ! Provided by VK_EXT_shader_object
  integer(c_int), parameter, public :: VK_INCOMPATIBLE_SHADER_BINARY_EXT = 1000482000
  ! Provided by VK_KHR_pipeline_binary
  integer(c_int), parameter, public :: VK_PIPELINE_BINARY_MISSING_KHR = 1000483000
  ! Provided by VK_KHR_pipeline_binary
  integer(c_int), parameter, public :: VK_ERROR_NOT_ENOUGH_SPACE_KHR = -1000483000
  ! Provided by VK_KHR_maintenance1
  integer(c_int), parameter, public :: VK_ERROR_OUT_OF_POOL_MEMORY_KHR = VK_ERROR_OUT_OF_POOL_MEMORY
  ! Provided by VK_KHR_external_memory
  integer(c_int), parameter, public :: VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR = VK_ERROR_INVALID_EXTERNAL_HANDLE
  ! Provided by VK_EXT_descriptor_indexing
  integer(c_int), parameter, public :: VK_ERROR_FRAGMENTATION_EXT = VK_ERROR_FRAGMENTATION
  ! Provided by VK_EXT_global_priority
  integer(c_int), parameter, public :: VK_ERROR_NOT_PERMITTED_EXT = VK_ERROR_NOT_PERMITTED_KHR
  ! Provided by VK_EXT_buffer_device_address
  integer(c_int), parameter, public :: VK_ERROR_INVALID_DEVICE_ADDRESS_EXT = VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS
  ! Provided by VK_KHR_buffer_device_address
  integer(c_int), parameter, public :: VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR = VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS
  ! Provided by VK_EXT_pipeline_creation_cache_control
  integer(c_int), parameter, public :: VK_PIPELINE_COMPILE_REQUIRED_EXT = VK_PIPELINE_COMPILE_REQUIRED
  ! Provided by VK_EXT_pipeline_creation_cache_control
  integer(c_int), parameter, public :: VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT = VK_PIPELINE_COMPILE_REQUIRED
  ! Provided by VK_EXT_shader_object
  ! VK_ERROR_INCOMPATIBLE_SHADER_BINARY_EXT is a deprecated alias
  integer(c_int), parameter, public :: VK_ERROR_INCOMPATIBLE_SHADER_BINARY_EXT = VK_INCOMPATIBLE_SHADER_BINARY_EXT


  !? VkQueueFlagBits. ==========================================================================


  integer(c_int), parameter, public :: VK_QUEUE_GRAPHICS_BIT = int(z"00000001")
  integer(c_int), parameter, public :: VK_QUEUE_COMPUTE_BIT = int(z"00000002")
  integer(c_int), parameter, public :: VK_QUEUE_TRANSFER_BIT = int(z"00000004")
  integer(c_int), parameter, public :: VK_QUEUE_SPARSE_BINDING_BIT = int(z"00000008")
  ! Provided by VK_VERSION_1_1
  integer(c_int), parameter, public :: VK_QUEUE_PROTECTED_BIT = int(z"00000010")
  ! Provided by VK_KHR_video_decode_queue
  integer(c_int), parameter, public :: VK_QUEUE_VIDEO_DECODE_BIT_KHR = int(z"00000020")
  ! Provided by VK_KHR_video_encode_queue
  integer(c_int), parameter, public :: VK_QUEUE_VIDEO_ENCODE_BIT_KHR = int(z"00000040")
  ! Provided by VK_NV_optical_flow
  integer(c_int), parameter, public :: VK_QUEUE_OPTICAL_FLOW_BIT_NV = int(z"00000100")


  !? VkStructureType. ==========================================================================


  ! Part of t_vk_structure_type.
  type t_physical_device
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SUBGROUP_PROPERTIES = 1000094000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: t_16BIT_STORAGE_FEATURES = 1000083000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: GROUP_PROPERTIES = 1000070000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: FEATURES_2 = 1000059000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: PROPERTIES_2 = 1000059001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: IMAGE_FORMAT_INFO_2 = 1000059004
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: MEMORY_PROPERTIES_2 = 1000059006
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SPARSE_IMAGE_FORMAT_INFO_2 = 1000059008
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: POINT_CLIPPING_PROPERTIES = 1000117000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: MULTIVIEW_FEATURES = 1000053001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: MULTIVIEW_PROPERTIES = 1000053002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: VARIABLE_POINTERS_FEATURES = 1000120000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: PROTECTED_MEMORY_FEATURES = 1000145001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: PROTECTED_MEMORY_PROPERTIES = 1000145002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_FEATURES = 1000156004
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_IMAGE_FORMAT_INFO = 1000071000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_BUFFER_INFO = 1000071002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: ID_PROPERTIES = 1000071004
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_FENCE_INFO = 1000112000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_SEMAPHORE_INFO = 1000076000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: MAINTENANCE_3_PROPERTIES = 1000168000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SHADER_DRAW_PARAMETERS_FEATURES = 1000063000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: VULKAN_1_1_FEATURES = 49
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: VULKAN_1_1_PROPERTIES = 50
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: VULKAN_1_2_FEATURES = 51
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: VULKAN_1_2_PROPERTIES = 52
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: t_8BIT_STORAGE_FEATURES = 1000177000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DRIVER_PROPERTIES = 1000196000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SHADER_ATOMIC_INT64_FEATURES = 1000180000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SHADER_FLOAT16_INT8_FEATURES = 1000082000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: FLOAT_CONTROLS_PROPERTIES = 1000197000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DESCRIPTOR_INDEXING_FEATURES = 1000161001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DESCRIPTOR_INDEXING_PROPERTIES = 1000161002
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DEPTH_STENCIL_RESOLVE_PROPERTIES = 1000199000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SCALAR_BLOCK_LAYOUT_FEATURES = 1000221000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SAMPLER_FILTER_MINMAX_PROPERTIES = 1000130000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: VULKAN_MEMORY_MODEL_FEATURES = 1000211000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: IMAGELESS_FRAMEBUFFER_FEATURES = 1000108000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES = 1000253000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES = 1000175000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES = 1000241000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: HOST_QUERY_RESET_FEATURES = 1000261000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: TIMELINE_SEMAPHORE_FEATURES = 1000207000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: TIMELINE_SEMAPHORE_PROPERTIES = 1000207001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_FEATURES = 1000257000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: VULKAN_1_3_FEATURES = 53
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: VULKAN_1_3_PROPERTIES = 54
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SHADER_TERMINATE_INVOCATION_FEATURES = 1000215000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: TOOL_PROPERTIES = 1000245000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES = 1000276000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: PRIVATE_DATA_FEATURES = 1000295000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: PIPELINE_CREATION_CACHE_CONTROL_FEATURES = 1000297000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SYNCHRONIZATION_2_FEATURES = 1000314007
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES = 1000325000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: IMAGE_ROBUSTNESS_FEATURES = 1000335000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SUBGROUP_SIZE_CONTROL_PROPERTIES = 1000225000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SUBGROUP_SIZE_CONTROL_FEATURES = 1000225002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: INLINE_UNIFORM_BLOCK_FEATURES = 1000138000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: INLINE_UNIFORM_BLOCK_PROPERTIES = 1000138001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: TEXTURE_COMPRESSION_ASTC_HDR_FEATURES = 1000066000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: DYNAMIC_RENDERING_FEATURES = 1000044003
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SHADER_INTEGER_DOT_PRODUCT_FEATURES = 1000280000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SHADER_INTEGER_DOT_PRODUCT_PROPERTIES = 1000280001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: TEXEL_BUFFER_ALIGNMENT_PROPERTIES = 1000281001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: MAINTENANCE_4_FEATURES = 1000413000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: MAINTENANCE_4_PROPERTIES = 1000413001
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: VIDEO_FORMAT_INFO_KHR = 1000023014
    ! Provided by VK_EXT_transform_feedback
    integer(c_int) :: TRANSFORM_FEEDBACK_FEATURES_EXT = 1000028000
    ! Provided by VK_EXT_transform_feedback
    integer(c_int) :: TRANSFORM_FEEDBACK_PROPERTIES_EXT = 1000028001
    ! Provided by VK_NV_corner_sampled_image
    integer(c_int) :: CORNER_SAMPLED_IMAGE_FEATURES_NV = 1000050000
    ! Provided by VK_EXT_astc_decode_mode
    integer(c_int) :: ASTC_DECODE_FEATURES_EXT = 1000067001
    ! Provided by VK_EXT_pipeline_robustness
    integer(c_int) :: PIPELINE_ROBUSTNESS_FEATURES_EXT = 1000068001
    ! Provided by VK_EXT_pipeline_robustness
    integer(c_int) :: PIPELINE_ROBUSTNESS_PROPERTIES_EXT = 1000068002
    ! Provided by VK_KHR_push_descriptor
    integer(c_int) :: PUSH_DESCRIPTOR_PROPERTIES_KHR = 1000080000
    ! Provided by VK_EXT_conditional_rendering
    integer(c_int) :: CONDITIONAL_RENDERING_FEATURES_EXT = 1000081001
    ! Provided by VK_NVX_multiview_per_view_attributes
    integer(c_int) :: MULTIVIEW_PER_VIEW_ATTRIBUTES_PROPERTIES_NVX = 1000097000
    ! Provided by VK_EXT_discard_rectangles
    integer(c_int) :: DISCARD_RECTANGLE_PROPERTIES_EXT = 1000099000
    ! Provided by VK_EXT_conservative_rasterization
    integer(c_int) :: CONSERVATIVE_RASTERIZATION_PROPERTIES_EXT = 1000101000
    ! Provided by VK_EXT_depth_clip_enable
    integer(c_int) :: DEPTH_CLIP_ENABLE_FEATURES_EXT = 1000102000
    ! Provided by VK_IMG_relaxed_line_rasterization
    integer(c_int) :: RELAXED_LINE_RASTERIZATION_FEATURES_IMG = 1000110000
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: PERFORMANCE_QUERY_FEATURES_KHR = 1000116000
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: PERFORMANCE_QUERY_PROPERTIES_KHR = 1000116001
    ! Provided by VK_KHR_get_surface_capabilities2
    integer(c_int) :: SURFACE_INFO_2_KHR = 1000119000
    ! Provided by VK_EXT_sample_locations
    integer(c_int) :: SAMPLE_LOCATIONS_PROPERTIES_EXT = 1000143003
    ! Provided by VK_EXT_blend_operation_advanced
    integer(c_int) :: BLEND_OPERATION_ADVANCED_FEATURES_EXT = 1000148000
    ! Provided by VK_EXT_blend_operation_advanced
    integer(c_int) :: BLEND_OPERATION_ADVANCED_PROPERTIES_EXT = 1000148001
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_FEATURES_KHR = 1000150013
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_PROPERTIES_KHR = 1000150014
    ! Provided by VK_KHR_ray_tracing_pipeline
    integer(c_int) :: RAY_TRACING_PIPELINE_FEATURES_KHR = 1000347000
    ! Provided by VK_KHR_ray_tracing_pipeline
    integer(c_int) :: RAY_TRACING_PIPELINE_PROPERTIES_KHR = 1000347001
    ! Provided by VK_KHR_ray_query
    integer(c_int) :: RAY_QUERY_FEATURES_KHR = 1000348013
    ! Provided by VK_NV_shader_sm_builtins
    integer(c_int) :: SHADER_SM_BUILTINS_FEATURES_NV = 1000154000
    ! Provided by VK_NV_shader_sm_builtins
    integer(c_int) :: SHADER_SM_BUILTINS_PROPERTIES_NV = 1000154001
    ! Provided by VK_EXT_image_drm_format_modifier
    integer(c_int) :: IMAGE_DRM_FORMAT_MODIFIER_INFO_EXT = 1000158002
    ! Provided by VK_NV_shading_rate_image
    integer(c_int) :: SHADING_RATE_IMAGE_FEATURES_NV = 1000164001
    ! Provided by VK_NV_shading_rate_image
    integer(c_int) :: SHADING_RATE_IMAGE_PROPERTIES_NV = 1000164002
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: RAY_TRACING_PROPERTIES_NV = 1000165009
    ! Provided by VK_NV_representative_fragment_test
    integer(c_int) :: REPRESENTATIVE_FRAGMENT_TEST_FEATURES_NV = 1000166000
    ! Provided by VK_EXT_filter_cubic
    integer(c_int) :: IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT = 1000170000
    ! Provided by VK_EXT_external_memory_host
    integer(c_int) :: EXTERNAL_MEMORY_HOST_PROPERTIES_EXT = 1000178002
    ! Provided by VK_KHR_shader_clock
    integer(c_int) :: SHADER_CLOCK_FEATURES_KHR = 1000181000
    ! Provided by VK_AMD_shader_core_properties
    integer(c_int) :: SHADER_CORE_PROPERTIES_AMD = 1000185000
    ! Provided by VK_KHR_global_priority
    integer(c_int) :: GLOBAL_PRIORITY_QUERY_FEATURES_KHR = 1000388000
    ! Provided by VK_EXT_vertex_attribute_divisor
    integer(c_int) :: VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT = 1000190000
    ! Provided by VK_NV_mesh_shader
    integer(c_int) :: MESH_SHADER_FEATURES_NV = 1000202000
    ! Provided by VK_NV_mesh_shader
    integer(c_int) :: MESH_SHADER_PROPERTIES_NV = 1000202001
    ! Provided by VK_NV_shader_image_footprint
    integer(c_int) :: SHADER_IMAGE_FOOTPRINT_FEATURES_NV = 1000204000
    ! Provided by VK_NV_scissor_exclusive
    integer(c_int) :: EXCLUSIVE_SCISSOR_FEATURES_NV = 1000205002
    ! Provided by VK_INTEL_shader_integer_functions2
    integer(c_int) :: SHADER_INTEGER_FUNCTIONS_2_FEATURES_INTEL = 1000209000
    ! Provided by VK_EXT_pci_bus_info
    integer(c_int) :: PCI_BUS_INFO_PROPERTIES_EXT = 1000212000
    ! Provided by VK_EXT_fragment_density_map
    integer(c_int) :: FRAGMENT_DENSITY_MAP_FEATURES_EXT = 1000218000
    ! Provided by VK_EXT_fragment_density_map
    integer(c_int) :: FRAGMENT_DENSITY_MAP_PROPERTIES_EXT = 1000218001
    ! Provided by VK_KHR_fragment_shading_rate
    integer(c_int) :: FRAGMENT_SHADING_RATE_PROPERTIES_KHR = 1000226002
    ! Provided by VK_KHR_fragment_shading_rate
    integer(c_int) :: FRAGMENT_SHADING_RATE_FEATURES_KHR = 1000226003
    ! Provided by VK_KHR_fragment_shading_rate
    integer(c_int) :: FRAGMENT_SHADING_RATE_KHR = 1000226004
    ! Provided by VK_AMD_shader_core_properties2
    integer(c_int) :: SHADER_CORE_PROPERTIES_2_AMD = 1000227000
    ! Provided by VK_AMD_device_coherent_memory
    integer(c_int) :: COHERENT_MEMORY_FEATURES_AMD = 1000229000
    ! Provided by VK_KHR_dynamic_rendering_local_read
    integer(c_int) :: DYNAMIC_RENDERING_LOCAL_READ_FEATURES_KHR = 1000232000
    ! Provided by VK_EXT_shader_image_atomic_int64
    integer(c_int) :: SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT = 1000234000
    ! Provided by VK_KHR_shader_quad_control
    integer(c_int) :: SHADER_QUAD_CONTROL_FEATURES_KHR = 1000235000
    ! Provided by VK_EXT_memory_budget
    integer(c_int) :: MEMORY_BUDGET_PROPERTIES_EXT = 1000237000
    ! Provided by VK_EXT_memory_priority
    integer(c_int) :: MEMORY_PRIORITY_FEATURES_EXT = 1000238000
    ! Provided by VK_NV_dedicated_allocation_image_aliasing
    integer(c_int) :: DEDICATED_ALLOCATION_IMAGE_ALIASING_FEATURES_NV = 1000240000
    ! Provided by VK_EXT_buffer_device_address
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_FEATURES_EXT = 1000244000
    ! Provided by VK_KHR_present_wait
    integer(c_int) :: PRESENT_WAIT_FEATURES_KHR = 1000248000
    ! Provided by VK_NV_cooperative_matrix
    integer(c_int) :: COOPERATIVE_MATRIX_FEATURES_NV = 1000249000
    ! Provided by VK_NV_cooperative_matrix
    integer(c_int) :: COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249002
    ! Provided by VK_NV_coverage_reduction_mode
    integer(c_int) :: COVERAGE_REDUCTION_MODE_FEATURES_NV = 1000250000
    ! Provided by VK_EXT_fragment_shader_interlock
    integer(c_int) :: FRAGMENT_SHADER_INTERLOCK_FEATURES_EXT = 1000251000
    ! Provided by VK_EXT_ycbcr_image_arrays
    integer(c_int) :: YCBCR_IMAGE_ARRAYS_FEATURES_EXT = 1000252000
    ! Provided by VK_EXT_provoking_vertex
    integer(c_int) :: PROVOKING_VERTEX_FEATURES_EXT = 1000254000
    ! Provided by VK_EXT_provoking_vertex
    integer(c_int) :: PROVOKING_VERTEX_PROPERTIES_EXT = 1000254002
    ! Provided by VK_EXT_shader_atomic_float
    integer(c_int) :: SHADER_ATOMIC_FLOAT_FEATURES_EXT = 1000260000
    ! Provided by VK_EXT_extended_dynamic_state
    integer(c_int) :: EXTENDED_DYNAMIC_STATE_FEATURES_EXT = 1000267000
    ! Provided by VK_KHR_pipeline_executable_properties
    integer(c_int) :: PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR = 1000269000
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: HOST_IMAGE_COPY_FEATURES_EXT = 1000270000
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: HOST_IMAGE_COPY_PROPERTIES_EXT = 1000270001
    ! Provided by VK_EXT_map_memory_placed
    integer(c_int) :: MAP_MEMORY_PLACED_FEATURES_EXT = 1000272000
    ! Provided by VK_EXT_map_memory_placed
    integer(c_int) :: MAP_MEMORY_PLACED_PROPERTIES_EXT = 1000272001
    ! Provided by VK_EXT_shader_atomic_float2
    integer(c_int) :: SHADER_ATOMIC_FLOAT_2_FEATURES_EXT = 1000273000
    ! Provided by VK_EXT_swapchain_maintenance1
    integer(c_int) :: SWAPCHAIN_MAINTENANCE_1_FEATURES_EXT = 1000275000
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: DEVICE_GENERATED_COMMANDS_PROPERTIES_NV = 1000277000
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: DEVICE_GENERATED_COMMANDS_FEATURES_NV = 1000277007
    ! Provided by VK_NV_inherited_viewport_scissor
    integer(c_int) :: INHERITED_VIEWPORT_SCISSOR_FEATURES_NV = 1000278000
    ! Provided by VK_EXT_texel_buffer_alignment
    integer(c_int) :: TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT = 1000281000
    ! Provided by VK_EXT_depth_bias_control
    integer(c_int) :: DEPTH_BIAS_CONTROL_FEATURES_EXT = 1000283000
    ! Provided by VK_EXT_device_memory_report
    integer(c_int) :: DEVICE_MEMORY_REPORT_FEATURES_EXT = 1000284000
    ! Provided by VK_EXT_robustness2
    integer(c_int) :: ROBUSTNESS_2_FEATURES_EXT = 1000286000
    ! Provided by VK_EXT_robustness2
    integer(c_int) :: ROBUSTNESS_2_PROPERTIES_EXT = 1000286001
    ! Provided by VK_EXT_custom_border_color
    integer(c_int) :: CUSTOM_BORDER_COLOR_PROPERTIES_EXT = 1000287001
    ! Provided by VK_EXT_custom_border_color
    integer(c_int) :: CUSTOM_BORDER_COLOR_FEATURES_EXT = 1000287002
    ! Provided by VK_NV_present_barrier
    integer(c_int) :: PRESENT_BARRIER_FEATURES_NV = 1000292000
    ! Provided by VK_KHR_present_id
    integer(c_int) :: PRESENT_ID_FEATURES_KHR = 1000294001
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: VIDEO_ENCODE_QUALITY_LEVEL_INFO_KHR = 1000299006
    ! Provided by VK_NV_device_diagnostics_config
    integer(c_int) :: DIAGNOSTICS_CONFIG_FEATURES_NV = 1000300000
    ! Provided by VK_NV_cuda_kernel_launch
    integer(c_int) :: CUDA_KERNEL_LAUNCH_FEATURES_NV = 1000307003
    ! Provided by VK_NV_cuda_kernel_launch
    integer(c_int) :: CUDA_KERNEL_LAUNCH_PROPERTIES_NV = 1000307004
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_BUFFER_PROPERTIES_EXT = 1000316000
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_BUFFER_DENSITY_MAP_PROPERTIES_EXT = 1000316001
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_BUFFER_FEATURES_EXT = 1000316002
    ! Provided by VK_EXT_graphics_pipeline_library
    integer(c_int) :: GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT = 1000320000
    ! Provided by VK_EXT_graphics_pipeline_library
    integer(c_int) :: GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT = 1000320001
    ! Provided by VK_AMD_shader_early_and_late_fragment_tests
    integer(c_int) :: SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_FEATURES_AMD = 1000321000
    ! Provided by VK_KHR_fragment_shader_barycentric
    integer(c_int) :: FRAGMENT_SHADER_BARYCENTRIC_FEATURES_KHR = 1000203000
    ! Provided by VK_KHR_fragment_shader_barycentric
    integer(c_int) :: FRAGMENT_SHADER_BARYCENTRIC_PROPERTIES_KHR = 1000322000
    ! Provided by VK_KHR_shader_subgroup_uniform_control_flow
    integer(c_int) :: SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_FEATURES_KHR = 1000323000
    ! Provided by VK_NV_fragment_shading_rate_enums
    integer(c_int) :: FRAGMENT_SHADING_RATE_ENUMS_PROPERTIES_NV = 1000326000
    ! Provided by VK_NV_fragment_shading_rate_enums
    integer(c_int) :: FRAGMENT_SHADING_RATE_ENUMS_FEATURES_NV = 1000326001
    ! Provided by VK_NV_ray_tracing_motion_blur
    integer(c_int) :: RAY_TRACING_MOTION_BLUR_FEATURES_NV = 1000327001
    ! Provided by VK_EXT_mesh_shader
    integer(c_int) :: MESH_SHADER_FEATURES_EXT = 1000328000
    ! Provided by VK_EXT_mesh_shader
    integer(c_int) :: MESH_SHADER_PROPERTIES_EXT = 1000328001
    ! Provided by VK_EXT_ycbcr_2plane_444_formats
    integer(c_int) :: YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT = 1000330000
    ! Provided by VK_EXT_fragment_density_map2
    integer(c_int) :: FRAGMENT_DENSITY_MAP_2_FEATURES_EXT = 1000332000
    ! Provided by VK_EXT_fragment_density_map2
    integer(c_int) :: FRAGMENT_DENSITY_MAP_2_PROPERTIES_EXT = 1000332001
    ! Provided by VK_KHR_workgroup_memory_explicit_layout
    integer(c_int) :: WORKGROUP_MEMORY_EXPLICIT_LAYOUT_FEATURES_KHR = 1000336000
    ! Provided by VK_EXT_image_compression_control
    integer(c_int) :: IMAGE_COMPRESSION_CONTROL_FEATURES_EXT = 1000338000
    ! Provided by VK_EXT_attachment_feedback_loop_layout
    integer(c_int) :: ATTACHMENT_FEEDBACK_LOOP_LAYOUT_FEATURES_EXT = 1000339000
    ! Provided by VK_EXT_4444_formats
    integer(c_int) :: t_4444_FORMATS_FEATURES_EXT = 1000340000
    ! Provided by VK_EXT_device_fault
    integer(c_int) :: FAULT_FEATURES_EXT = 1000341000
    ! Provided by VK_EXT_rgba10x6_formats
    integer(c_int) :: RGBA10X6_FORMATS_FEATURES_EXT = 1000344000
    ! Provided by VK_EXT_vertex_input_dynamic_state
    integer(c_int) :: VERTEX_INPUT_DYNAMIC_STATE_FEATURES_EXT = 1000352000
    ! Provided by VK_EXT_drm
    integer(c_int) :: DRM_PROPERTIES_EXT = 1000353000
    ! Provided by VK_EXT_device_address_binding_report
    integer(c_int) :: ADDRESS_BINDING_REPORT_FEATURES_EXT = 1000354000
    ! Provided by VK_EXT_depth_clip_control
    integer(c_int) :: DEPTH_CLIP_CONTROL_FEATURES_EXT = 1000355000
    ! Provided by VK_EXT_primitive_topology_list_restart
    integer(c_int) :: PRIMITIVE_TOPOLOGY_LIST_RESTART_FEATURES_EXT = 1000356000
    ! Provided by VK_EXT_present_mode_fifo_latest_ready
    integer(c_int) :: PRESENT_MODE_FIFO_LATEST_READY_FEATURES_EXT = 1000361000
    ! Provided by VK_HUAWEI_subpass_shading
    integer(c_int) :: SUBPASS_SHADING_FEATURES_HUAWEI = 1000369001
    ! Provided by VK_HUAWEI_subpass_shading
    integer(c_int) :: SUBPASS_SHADING_PROPERTIES_HUAWEI = 1000369002
    ! Provided by VK_HUAWEI_invocation_mask
    integer(c_int) :: INVOCATION_MASK_FEATURES_HUAWEI = 1000370000
    ! Provided by VK_NV_external_memory_rdma
    integer(c_int) :: EXTERNAL_MEMORY_RDMA_FEATURES_NV = 1000371001
    ! Provided by VK_EXT_pipeline_properties
    integer(c_int) :: PIPELINE_PROPERTIES_FEATURES_EXT = 1000372001
    ! Provided by VK_EXT_frame_boundary
    integer(c_int) :: FRAME_BOUNDARY_FEATURES_EXT = 1000375000
    ! Provided by VK_EXT_multisampled_render_to_single_sampled
    integer(c_int) :: MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_FEATURES_EXT = 1000376000
    ! Provided by VK_EXT_extended_dynamic_state2
    integer(c_int) :: EXTENDED_DYNAMIC_STATE_2_FEATURES_EXT = 1000377000
    ! Provided by VK_EXT_color_write_enable
    integer(c_int) :: COLOR_WRITE_ENABLE_FEATURES_EXT = 1000381000
    ! Provided by VK_EXT_primitives_generated_query
    integer(c_int) :: PRIMITIVES_GENERATED_QUERY_FEATURES_EXT = 1000382000
    ! Provided by VK_KHR_ray_tracing_maintenance1
    integer(c_int) :: RAY_TRACING_MAINTENANCE_1_FEATURES_KHR = 1000386000
    ! Provided by VK_EXT_image_view_min_lod
    integer(c_int) :: IMAGE_VIEW_MIN_LOD_FEATURES_EXT = 1000391000
    ! Provided by VK_EXT_multi_draw
    integer(c_int) :: MULTI_DRAW_FEATURES_EXT = 1000392000
    ! Provided by VK_EXT_multi_draw
    integer(c_int) :: MULTI_DRAW_PROPERTIES_EXT = 1000392001
    ! Provided by VK_EXT_image_2d_view_of_3d
    integer(c_int) :: IMAGE_2D_VIEW_OF_3D_FEATURES_EXT = 1000393000
    ! Provided by VK_EXT_shader_tile_image
    integer(c_int) :: SHADER_TILE_IMAGE_FEATURES_EXT = 1000395000
    ! Provided by VK_EXT_shader_tile_image
    integer(c_int) :: SHADER_TILE_IMAGE_PROPERTIES_EXT = 1000395001
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: OPACITY_MICROMAP_FEATURES_EXT = 1000396005
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: OPACITY_MICROMAP_PROPERTIES_EXT = 1000396006
    ! Provided by VK_NV_displacement_micromap
    integer(c_int) :: DISPLACEMENT_MICROMAP_FEATURES_NV = 1000397000
    ! Provided by VK_NV_displacement_micromap
    integer(c_int) :: DISPLACEMENT_MICROMAP_PROPERTIES_NV = 1000397001
    ! Provided by VK_HUAWEI_cluster_culling_shader
    integer(c_int) :: CLUSTER_CULLING_SHADER_FEATURES_HUAWEI = 1000404000
    ! Provided by VK_HUAWEI_cluster_culling_shader
    integer(c_int) :: CLUSTER_CULLING_SHADER_PROPERTIES_HUAWEI = 1000404001
    ! Provided by VK_HUAWEI_cluster_culling_shader
    integer(c_int) :: CLUSTER_CULLING_SHADER_VRS_FEATURES_HUAWEI = 1000404002
    ! Provided by VK_EXT_border_color_swizzle
    integer(c_int) :: BORDER_COLOR_SWIZZLE_FEATURES_EXT = 1000411000
    ! Provided by VK_EXT_pageable_device_local_memory
    integer(c_int) :: PAGEABLE_DEVICE_LOCAL_MEMORY_FEATURES_EXT = 1000412000
    ! Provided by VK_ARM_shader_core_properties
    integer(c_int) :: SHADER_CORE_PROPERTIES_ARM = 1000415000
    ! Provided by VK_KHR_shader_subgroup_rotate
    integer(c_int) :: SHADER_SUBGROUP_ROTATE_FEATURES_KHR = 1000416000
    ! Provided by VK_ARM_scheduling_controls
    integer(c_int) :: SCHEDULING_CONTROLS_FEATURES_ARM = 1000417001
    ! Provided by VK_ARM_scheduling_controls
    integer(c_int) :: SCHEDULING_CONTROLS_PROPERTIES_ARM = 1000417002
    ! Provided by VK_EXT_image_sliced_view_of_3d
    integer(c_int) :: IMAGE_SLICED_VIEW_OF_3D_FEATURES_EXT = 1000418000
    ! Provided by VK_VALVE_descriptor_set_host_mapping
    integer(c_int) :: DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE = 1000420000
    ! Provided by VK_EXT_depth_clamp_zero_one
    integer(c_int) :: DEPTH_CLAMP_ZERO_ONE_FEATURES_EXT = 1000421000
    ! Provided by VK_EXT_non_seamless_cube_map
    integer(c_int) :: NON_SEAMLESS_CUBE_MAP_FEATURES_EXT = 1000422000
    ! Provided by VK_ARM_render_pass_striped
    integer(c_int) :: RENDER_PASS_STRIPED_FEATURES_ARM = 1000424000
    ! Provided by VK_ARM_render_pass_striped
    integer(c_int) :: RENDER_PASS_STRIPED_PROPERTIES_ARM = 1000424001
    ! Provided by VK_QCOM_fragment_density_map_offset
    integer(c_int) :: FRAGMENT_DENSITY_MAP_OFFSET_FEATURES_QCOM = 1000425000
    ! Provided by VK_QCOM_fragment_density_map_offset
    integer(c_int) :: FRAGMENT_DENSITY_MAP_OFFSET_PROPERTIES_QCOM = 1000425001
    ! Provided by VK_NV_copy_memory_indirect
    integer(c_int) :: COPY_MEMORY_INDIRECT_FEATURES_NV = 1000426000
    ! Provided by VK_NV_copy_memory_indirect
    integer(c_int) :: COPY_MEMORY_INDIRECT_PROPERTIES_NV = 1000426001
    ! Provided by VK_NV_memory_decompression
    integer(c_int) :: MEMORY_DECOMPRESSION_FEATURES_NV = 1000427000
    ! Provided by VK_NV_memory_decompression
    integer(c_int) :: MEMORY_DECOMPRESSION_PROPERTIES_NV = 1000427001
    ! Provided by VK_NV_device_generated_commands_compute
    integer(c_int) :: DEVICE_GENERATED_COMMANDS_COMPUTE_FEATURES_NV = 1000428000
    ! Provided by VK_NV_linear_color_attachment
    integer(c_int) :: LINEAR_COLOR_ATTACHMENT_FEATURES_NV = 1000430000
    ! Provided by VK_KHR_shader_maximal_reconvergence
    integer(c_int) :: SHADER_MAXIMAL_RECONVERGENCE_FEATURES_KHR = 1000434000
    ! Provided by VK_EXT_image_compression_control_swapchain
    integer(c_int) :: IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_FEATURES_EXT = 1000437000
    ! Provided by VK_QCOM_image_processing
    integer(c_int) :: IMAGE_PROCESSING_FEATURES_QCOM = 1000440000
    ! Provided by VK_QCOM_image_processing
    integer(c_int) :: IMAGE_PROCESSING_PROPERTIES_QCOM = 1000440001
    ! Provided by VK_EXT_nested_command_buffer
    integer(c_int) :: NESTED_COMMAND_BUFFER_FEATURES_EXT = 1000451000
    ! Provided by VK_EXT_nested_command_buffer
    integer(c_int) :: NESTED_COMMAND_BUFFER_PROPERTIES_EXT = 1000451001
    ! Provided by VK_EXT_extended_dynamic_state3
    integer(c_int) :: EXTENDED_DYNAMIC_STATE_3_FEATURES_EXT = 1000455000
    ! Provided by VK_EXT_extended_dynamic_state3
    integer(c_int) :: EXTENDED_DYNAMIC_STATE_3_PROPERTIES_EXT = 1000455001
    ! Provided by VK_EXT_subpass_merge_feedback
    integer(c_int) :: SUBPASS_MERGE_FEEDBACK_FEATURES_EXT = 1000458000
    ! Provided by VK_EXT_shader_module_identifier
    integer(c_int) :: SHADER_MODULE_IDENTIFIER_FEATURES_EXT = 1000462000
    ! Provided by VK_EXT_shader_module_identifier
    integer(c_int) :: SHADER_MODULE_IDENTIFIER_PROPERTIES_EXT = 1000462001
    ! Provided by VK_EXT_rasterization_order_attachment_access
    integer(c_int) :: RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT = 1000342000
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_FEATURES_NV = 1000464000
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_PROPERTIES_NV = 1000464001
    ! Provided by VK_EXT_legacy_dithering
    integer(c_int) :: LEGACY_DITHERING_FEATURES_EXT = 1000465000
    ! Provided by VK_EXT_pipeline_protected_access
    integer(c_int) :: PIPELINE_PROTECTED_ACCESS_FEATURES_EXT = 1000466000
    ! Provided by VK_ANDROID_external_format_resolve
    integer(c_int) :: EXTERNAL_FORMAT_RESOLVE_FEATURES_ANDROID = 1000468000
    ! Provided by VK_ANDROID_external_format_resolve
    integer(c_int) :: EXTERNAL_FORMAT_RESOLVE_PROPERTIES_ANDROID = 1000468001
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: MAINTENANCE_5_FEATURES_KHR = 1000470000
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: MAINTENANCE_5_PROPERTIES_KHR = 1000470001
    ! Provided by VK_AMD_anti_lag
    integer(c_int) :: ANTI_LAG_FEATURES_AMD = 1000476000
    ! Provided by VK_KHR_ray_tracing_position_fetch
    integer(c_int) :: RAY_TRACING_POSITION_FETCH_FEATURES_KHR = 1000481000
    ! Provided by VK_EXT_shader_object
    integer(c_int) :: SHADER_OBJECT_FEATURES_EXT = 1000482000
    ! Provided by VK_EXT_shader_object
    integer(c_int) :: SHADER_OBJECT_PROPERTIES_EXT = 1000482001
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: PIPELINE_BINARY_FEATURES_KHR = 1000483000
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: PIPELINE_BINARY_PROPERTIES_KHR = 1000483004
    ! Provided by VK_QCOM_tile_properties
    integer(c_int) :: TILE_PROPERTIES_FEATURES_QCOM = 1000484000
    ! Provided by VK_SEC_amigo_profiling
    integer(c_int) :: AMIGO_PROFILING_FEATURES_SEC = 1000485000
    ! Provided by VK_QCOM_multiview_per_view_viewports
    integer(c_int) :: MULTIVIEW_PER_VIEW_VIEWPORTS_FEATURES_QCOM = 1000488000
    ! Provided by VK_NV_ray_tracing_invocation_reorder
    integer(c_int) :: RAY_TRACING_INVOCATION_REORDER_FEATURES_NV = 1000490000
    ! Provided by VK_NV_ray_tracing_invocation_reorder
    integer(c_int) :: RAY_TRACING_INVOCATION_REORDER_PROPERTIES_NV = 1000490001
    ! Provided by VK_NV_extended_sparse_address_space
    integer(c_int) :: EXTENDED_SPARSE_ADDRESS_SPACE_FEATURES_NV = 1000492000
    ! Provided by VK_NV_extended_sparse_address_space
    integer(c_int) :: EXTENDED_SPARSE_ADDRESS_SPACE_PROPERTIES_NV = 1000492001
    ! Provided by VK_EXT_mutable_descriptor_type
    integer(c_int) :: MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT = 1000351000
    ! Provided by VK_EXT_legacy_vertex_attributes
    integer(c_int) :: LEGACY_VERTEX_ATTRIBUTES_FEATURES_EXT = 1000495000
    ! Provided by VK_EXT_legacy_vertex_attributes
    integer(c_int) :: LEGACY_VERTEX_ATTRIBUTES_PROPERTIES_EXT = 1000495001
    ! Provided by VK_ARM_shader_core_builtins
    integer(c_int) :: SHADER_CORE_BUILTINS_FEATURES_ARM = 1000497000
    ! Provided by VK_ARM_shader_core_builtins
    integer(c_int) :: SHADER_CORE_BUILTINS_PROPERTIES_ARM = 1000497001
    ! Provided by VK_EXT_pipeline_library_group_handles
    integer(c_int) :: PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT = 1000498000
    ! Provided by VK_EXT_dynamic_rendering_unused_attachments
    integer(c_int) :: DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_FEATURES_EXT = 1000499000
    ! Provided by VK_KHR_cooperative_matrix
    integer(c_int) :: COOPERATIVE_MATRIX_FEATURES_KHR = 1000506000
    ! Provided by VK_KHR_cooperative_matrix
    integer(c_int) :: COOPERATIVE_MATRIX_PROPERTIES_KHR = 1000506002
    ! Provided by VK_QCOM_multiview_per_view_render_areas
    integer(c_int) :: MULTIVIEW_PER_VIEW_RENDER_AREAS_FEATURES_QCOM = 1000510000
    ! Provided by VK_KHR_compute_shader_derivatives
    integer(c_int) :: COMPUTE_SHADER_DERIVATIVES_FEATURES_KHR = 1000201000
    ! Provided by VK_KHR_compute_shader_derivatives
    integer(c_int) :: COMPUTE_SHADER_DERIVATIVES_PROPERTIES_KHR = 1000511000
    ! Provided by VK_KHR_video_maintenance1
    integer(c_int) :: VIDEO_MAINTENANCE_1_FEATURES_KHR = 1000515000
    ! Provided by VK_NV_per_stage_descriptor_set
    integer(c_int) :: PER_STAGE_DESCRIPTOR_SET_FEATURES_NV = 1000516000
    ! Provided by VK_QCOM_image_processing2
    integer(c_int) :: IMAGE_PROCESSING_2_FEATURES_QCOM = 1000518000
    ! Provided by VK_QCOM_image_processing2
    integer(c_int) :: IMAGE_PROCESSING_2_PROPERTIES_QCOM = 1000518001
    ! Provided by VK_QCOM_filter_cubic_weights
    integer(c_int) :: CUBIC_WEIGHTS_FEATURES_QCOM = 1000519001
    ! Provided by VK_QCOM_ycbcr_degamma
    integer(c_int) :: YCBCR_DEGAMMA_FEATURES_QCOM = 1000520000
    ! Provided by VK_QCOM_filter_cubic_clamp
    integer(c_int) :: CUBIC_CLAMP_FEATURES_QCOM = 1000521000
    ! Provided by VK_EXT_attachment_feedback_loop_dynamic_state
    integer(c_int) :: ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_FEATURES_EXT = 1000524000
    ! Provided by VK_KHR_vertex_attribute_divisor
    integer(c_int) :: VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_KHR = 1000525000
    ! Provided by VK_KHR_vertex_attribute_divisor
    integer(c_int) :: VERTEX_ATTRIBUTE_DIVISOR_FEATURES_KHR = 1000190002
    ! Provided by VK_KHR_shader_float_controls2
    integer(c_int) :: SHADER_FLOAT_CONTROLS_2_FEATURES_KHR = 1000528000
    ! Provided by VK_QNX_external_memory_screen_buffer
    integer(c_int) :: EXTERNAL_MEMORY_SCREEN_BUFFER_FEATURES_QNX = 1000529004
    ! Provided by VK_MSFT_layered_driver
    integer(c_int) :: LAYERED_DRIVER_PROPERTIES_MSFT = 1000530000
    ! Provided by VK_KHR_index_type_uint8
    integer(c_int) :: INDEX_TYPE_UINT8_FEATURES_KHR = 1000265000
    ! Provided by VK_KHR_line_rasterization
    integer(c_int) :: LINE_RASTERIZATION_FEATURES_KHR = 1000259000
    ! Provided by VK_KHR_line_rasterization
    integer(c_int) :: LINE_RASTERIZATION_PROPERTIES_KHR = 1000259002
    ! Provided by VK_KHR_shader_expect_assume
    integer(c_int) :: SHADER_EXPECT_ASSUME_FEATURES_KHR = 1000544000
    ! Provided by VK_KHR_maintenance6
    integer(c_int) :: MAINTENANCE_6_FEATURES_KHR = 1000545000
    ! Provided by VK_KHR_maintenance6
    integer(c_int) :: MAINTENANCE_6_PROPERTIES_KHR = 1000545001
    ! Provided by VK_NV_descriptor_pool_overallocation
    integer(c_int) :: DESCRIPTOR_POOL_OVERALLOCATION_FEATURES_NV = 1000546000
    ! Provided by VK_NV_raw_access_chains
    integer(c_int) :: RAW_ACCESS_CHAINS_FEATURES_NV = 1000555000
    ! Provided by VK_KHR_shader_relaxed_extended_instruction
    integer(c_int) :: SHADER_RELAXED_EXTENDED_INSTRUCTION_FEATURES_KHR = 1000558000
    ! Provided by VK_NV_command_buffer_inheritance
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_FEATURES_NV = 1000559000
    ! Provided by VK_KHR_maintenance7
    integer(c_int) :: MAINTENANCE_7_FEATURES_KHR = 1000562000
    ! Provided by VK_KHR_maintenance7
    integer(c_int) :: MAINTENANCE_7_PROPERTIES_KHR = 1000562001
    ! Provided by VK_KHR_maintenance7
    integer(c_int) :: LAYERED_API_PROPERTIES_LIST_KHR = 1000562002
    ! Provided by VK_KHR_maintenance7
    integer(c_int) :: LAYERED_API_PROPERTIES_KHR = 1000562003
    ! Provided by VK_KHR_maintenance7
    integer(c_int) :: LAYERED_API_VULKAN_PROPERTIES_KHR = 1000562004
    ! Provided by VK_NV_shader_atomic_float16_vector
    integer(c_int) :: SHADER_ATOMIC_FLOAT16_VECTOR_FEATURES_NV = 1000563000
    ! Provided by VK_EXT_shader_replicated_composites
    integer(c_int) :: SHADER_REPLICATED_COMPOSITES_FEATURES_EXT = 1000564000
    ! Provided by VK_NV_ray_tracing_validation
    integer(c_int) :: RAY_TRACING_VALIDATION_FEATURES_NV = 1000568000
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: DEVICE_GENERATED_COMMANDS_FEATURES_EXT = 1000572000
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: DEVICE_GENERATED_COMMANDS_PROPERTIES_EXT = 1000572001
    ! Provided by VK_MESA_image_alignment_control
    integer(c_int) :: IMAGE_ALIGNMENT_CONTROL_FEATURES_MESA = 1000575000
    ! Provided by VK_MESA_image_alignment_control
    integer(c_int) :: IMAGE_ALIGNMENT_CONTROL_PROPERTIES_MESA = 1000575001
    ! Provided by VK_EXT_depth_clamp_control
    integer(c_int) :: DEPTH_CLAMP_CONTROL_FEATURES_EXT = 1000582000
    ! Provided by VK_NV_cooperative_matrix2
    integer(c_int) :: COOPERATIVE_MATRIX_2_FEATURES_NV = 1000593000
    ! Provided by VK_NV_cooperative_matrix2
    integer(c_int) :: COOPERATIVE_MATRIX_2_PROPERTIES_NV = 1000593002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: VARIABLE_POINTER_FEATURES = 1000120000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SHADER_DRAW_PARAMETER_FEATURES = 1000063000
    ! Provided by VK_KHR_dynamic_rendering
    integer(c_int) :: DYNAMIC_RENDERING_FEATURES_KHR = 1000044003
    ! Provided by VK_KHR_multiview
    integer(c_int) :: MULTIVIEW_FEATURES_KHR = 1000053001
    ! Provided by VK_KHR_multiview
    integer(c_int) :: MULTIVIEW_PROPERTIES_KHR = 1000053002
    ! Provided by VK_KHR_get_properties2
    integer(c_int) :: FEATURES_2_KHR = 1000059000
    ! Provided by VK_KHR_get_properties2
    integer(c_int) :: PROPERTIES_2_KHR = 1000059001
    ! Provided by VK_KHR_get_properties2
    integer(c_int) :: IMAGE_FORMAT_INFO_2_KHR = 1000059004
    ! Provided by VK_KHR_get_properties2
    integer(c_int) :: MEMORY_PROPERTIES_2_KHR = 1000059006
    ! Provided by VK_KHR_get_properties2
    integer(c_int) :: SPARSE_IMAGE_FORMAT_INFO_2_KHR = 1000059008
    ! Provided by VK_EXT_texture_compression_astc_hdr
    integer(c_int) :: TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT = 1000066000
    ! Provided by VK_KHR_device_group_creation
    integer(c_int) :: GROUP_PROPERTIES_KHR = 1000070000
    ! Provided by VK_KHR_external_memory_capabilities
    integer(c_int) :: EXTERNAL_IMAGE_FORMAT_INFO_KHR = 1000071000
    ! Provided by VK_KHR_external_memory_capabilities
    integer(c_int) :: EXTERNAL_BUFFER_INFO_KHR = 1000071002
    ! Provided by VK_KHR_external_fence_capabilities VK_KHR_external_memory_capabilities VK_KHR_external_semaphore_capabilities
    integer(c_int) :: ID_PROPERTIES_KHR = 1000071004
    ! Provided by VK_KHR_external_semaphore_capabilities
    integer(c_int) :: EXTERNAL_SEMAPHORE_INFO_KHR = 1000076000
    ! Provided by VK_KHR_shader_float16_int8
    integer(c_int) :: SHADER_FLOAT16_INT8_FEATURES_KHR = 1000082000
    ! Provided by VK_KHR_shader_float16_int8
    integer(c_int) :: FLOAT16_INT8_FEATURES_KHR = 1000082000
    ! Provided by VK_KHR_16bit_storage
    integer(c_int) :: t_16BIT_STORAGE_FEATURES_KHR = 1000083000
    ! Provided by VK_KHR_imageless_framebuffer
    integer(c_int) :: IMAGELESS_FRAMEBUFFER_FEATURES_KHR = 1000108000
    ! Provided by VK_KHR_external_fence_capabilities
    integer(c_int) :: EXTERNAL_FENCE_INFO_KHR = 1000112000
    ! Provided by VK_KHR_maintenance2
    integer(c_int) :: POINT_CLIPPING_PROPERTIES_KHR = 1000117000
    ! Provided by VK_KHR_variable_pointers
    integer(c_int) :: VARIABLE_POINTERS_FEATURES_KHR = 1000120000
    ! Provided by VK_KHR_variable_pointers
    integer(c_int) :: VARIABLE_POINTER_FEATURES_KHR = 1000120000
    ! Provided by VK_EXT_sampler_filter_minmax
    integer(c_int) :: SAMPLER_FILTER_MINMAX_PROPERTIES_EXT = 1000130000
    ! Provided by VK_EXT_inline_uniform_block
    integer(c_int) :: INLINE_UNIFORM_BLOCK_FEATURES_EXT = 1000138000
    ! Provided by VK_EXT_inline_uniform_block
    integer(c_int) :: INLINE_UNIFORM_BLOCK_PROPERTIES_EXT = 1000138001
    ! Provided by VK_KHR_sampler_ycbcr_conversion
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_FEATURES_KHR = 1000156004
    ! Provided by VK_EXT_descriptor_indexing
    integer(c_int) :: DESCRIPTOR_INDEXING_FEATURES_EXT = 1000161001
    ! Provided by VK_EXT_descriptor_indexing
    integer(c_int) :: DESCRIPTOR_INDEXING_PROPERTIES_EXT = 1000161002
    ! Provided by VK_KHR_maintenance3
    integer(c_int) :: MAINTENANCE_3_PROPERTIES_KHR = 1000168000
    ! Provided by VK_KHR_shader_subgroup_extended_types
    integer(c_int) :: SHADER_SUBGROUP_EXTENDED_TYPES_FEATURES_KHR = 1000175000
    ! Provided by VK_KHR_8bit_storage
    integer(c_int) :: t_8BIT_STORAGE_FEATURES_KHR = 1000177000
    ! Provided by VK_KHR_shader_atomic_int64
    integer(c_int) :: SHADER_ATOMIC_INT64_FEATURES_KHR = 1000180000
    ! Provided by VK_EXT_vertex_attribute_divisor
    integer(c_int) :: VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT = 1000190002
    ! Provided by VK_KHR_driver_properties
    integer(c_int) :: DRIVER_PROPERTIES_KHR = 1000196000
    ! Provided by VK_KHR_shader_float_controls
    integer(c_int) :: FLOAT_CONTROLS_PROPERTIES_KHR = 1000197000
    ! Provided by VK_KHR_depth_stencil_resolve
    integer(c_int) :: DEPTH_STENCIL_RESOLVE_PROPERTIES_KHR = 1000199000
    ! Provided by VK_NV_compute_shader_derivatives
    integer(c_int) :: COMPUTE_SHADER_DERIVATIVES_FEATURES_NV = 1000201000
    ! Provided by VK_NV_fragment_shader_barycentric
    integer(c_int) :: FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV = 1000203000
    ! Provided by VK_KHR_timeline_semaphore
    integer(c_int) :: TIMELINE_SEMAPHORE_FEATURES_KHR = 1000207000
    ! Provided by VK_KHR_timeline_semaphore
    integer(c_int) :: TIMELINE_SEMAPHORE_PROPERTIES_KHR = 1000207001
    ! Provided by VK_KHR_vulkan_memory_model
    integer(c_int) :: VULKAN_MEMORY_MODEL_FEATURES_KHR = 1000211000
    ! Provided by VK_KHR_shader_terminate_invocation
    integer(c_int) :: SHADER_TERMINATE_INVOCATION_FEATURES_KHR = 1000215000
    ! Provided by VK_EXT_scalar_block_layout
    integer(c_int) :: SCALAR_BLOCK_LAYOUT_FEATURES_EXT = 1000221000
    ! Provided by VK_EXT_subgroup_size_control
    integer(c_int) :: SUBGROUP_SIZE_CONTROL_PROPERTIES_EXT = 1000225000
    ! Provided by VK_EXT_subgroup_size_control
    integer(c_int) :: SUBGROUP_SIZE_CONTROL_FEATURES_EXT = 1000225002
    ! Provided by VK_KHR_separate_depth_stencil_layouts
    integer(c_int) :: SEPARATE_DEPTH_STENCIL_LAYOUTS_FEATURES_KHR = 1000241000
    ! Provided by VK_EXT_buffer_device_address
    integer(c_int) :: BUFFER_ADDRESS_FEATURES_EXT = 1000244000
    ! Provided by VK_EXT_tooling_info
    integer(c_int) :: TOOL_PROPERTIES_EXT = 1000245000
    ! Provided by VK_KHR_uniform_buffer_standard_layout
    integer(c_int) :: UNIFORM_BUFFER_STANDARD_LAYOUT_FEATURES_KHR = 1000253000
    ! Provided by VK_KHR_buffer_device_address
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_FEATURES_KHR = 1000257000
    ! Provided by VK_EXT_line_rasterization
    integer(c_int) :: LINE_RASTERIZATION_FEATURES_EXT = 1000259000
    ! Provided by VK_EXT_line_rasterization
    integer(c_int) :: LINE_RASTERIZATION_PROPERTIES_EXT = 1000259002
    ! Provided by VK_EXT_host_query_reset
    integer(c_int) :: HOST_QUERY_RESET_FEATURES_EXT = 1000261000
    ! Provided by VK_EXT_index_type_uint8
    integer(c_int) :: INDEX_TYPE_UINT8_FEATURES_EXT = 1000265000
    ! Provided by VK_EXT_shader_demote_to_helper_invocation
    integer(c_int) :: SHADER_DEMOTE_TO_HELPER_INVOCATION_FEATURES_EXT = 1000276000
    ! Provided by VK_KHR_shader_integer_dot_product
    integer(c_int) :: SHADER_INTEGER_DOT_PRODUCT_FEATURES_KHR = 1000280000
    ! Provided by VK_KHR_shader_integer_dot_product
    integer(c_int) :: SHADER_INTEGER_DOT_PRODUCT_PROPERTIES_KHR = 1000280001
    ! Provided by VK_EXT_texel_buffer_alignment
    integer(c_int) :: TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT = 1000281001
    ! Provided by VK_EXT_private_data
    integer(c_int) :: PRIVATE_DATA_FEATURES_EXT = 1000295000
    ! Provided by VK_EXT_pipeline_creation_cache_control
    integer(c_int) :: PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT = 1000297000
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: SYNCHRONIZATION_2_FEATURES_KHR = 1000314007
    ! Provided by VK_KHR_zero_initialize_workgroup_memory
    integer(c_int) :: ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES_KHR = 1000325000
    ! Provided by VK_EXT_image_robustness
    integer(c_int) :: IMAGE_ROBUSTNESS_FEATURES_EXT = 1000335000
    ! Provided by VK_ARM_rasterization_order_attachment_access
    ! integer(c_int) :: RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_ARM = RASTERIZATION_ORDER_ATTACHMENT_ACCESS_FEATURES_EXT
    ! Provided by VK_VALVE_mutable_descriptor_type
    integer(c_int) :: MUTABLE_DESCRIPTOR_TYPE_FEATURES_VALVE = 1000351000
    ! Provided by VK_EXT_global_priority_query
    integer(c_int) :: GLOBAL_PRIORITY_QUERY_FEATURES_EXT = 1000388000
    ! Provided by VK_KHR_maintenance4
    integer(c_int) :: MAINTENANCE_4_FEATURES_KHR = 1000413000
    ! Provided by VK_KHR_maintenance4
    integer(c_int) :: MAINTENANCE_4_PROPERTIES_KHR = 1000413001
  end type t_physical_device


  type t_pipeline
    integer(c_int) :: CACHE_CREATE_INFO = 17
    integer(c_int) :: SHADER_STAGE_CREATE_INFO = 18
    integer(c_int) :: VERTEX_INPUT_STATE_CREATE_INFO = 19
    integer(c_int) :: INPUT_ASSEMBLY_STATE_CREATE_INFO = 20
    integer(c_int) :: TESSELLATION_STATE_CREATE_INFO = 21
    integer(c_int) :: VIEWPORT_STATE_CREATE_INFO = 22
    integer(c_int) :: RASTERIZATION_STATE_CREATE_INFO = 23
    integer(c_int) :: MULTISAMPLE_STATE_CREATE_INFO = 24
    integer(c_int) :: DEPTH_STENCIL_STATE_CREATE_INFO = 25
    integer(c_int) :: COLOR_BLEND_STATE_CREATE_INFO = 26
    integer(c_int) :: DYNAMIC_STATE_CREATE_INFO = 27
    integer(c_int) :: LAYOUT_CREATE_INFO = 30
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO = 1000117003
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: CREATION_FEEDBACK_CREATE_INFO = 1000192000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO = 1000225001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: RENDERING_CREATE_INFO = 1000044002
    ! Provided by VK_AMD_rasterization_order
    integer(c_int) :: RASTERIZATION_STATE_RASTERIZATION_ORDER_AMD = 1000018000
    ! Provided by VK_EXT_transform_feedback
    integer(c_int) :: RASTERIZATION_STATE_STREAM_CREATE_INFO_EXT = 1000028002
    ! Provided by VK_EXT_pipeline_robustness
    integer(c_int) :: ROBUSTNESS_CREATE_INFO_EXT = 1000068000
    ! Provided by VK_NV_clip_space_w_scaling
    integer(c_int) :: VIEWPORT_W_SCALING_STATE_CREATE_INFO_NV = 1000087000
    ! Provided by VK_NV_viewport_swizzle
    integer(c_int) :: VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV = 1000098000
    ! Provided by VK_EXT_discard_rectangles
    integer(c_int) :: DISCARD_RECTANGLE_STATE_CREATE_INFO_EXT = 1000099001
    ! Provided by VK_EXT_conservative_rasterization
    integer(c_int) :: RASTERIZATION_CONSERVATIVE_STATE_CREATE_INFO_EXT = 1000101001
    ! Provided by VK_EXT_depth_clip_enable
    integer(c_int) :: RASTERIZATION_DEPTH_CLIP_STATE_CREATE_INFO_EXT = 1000102001
    ! Provided by VK_EXT_sample_locations
    integer(c_int) :: SAMPLE_LOCATIONS_STATE_CREATE_INFO_EXT = 1000143002
    ! Provided by VK_EXT_blend_operation_advanced
    integer(c_int) :: COLOR_BLEND_ADVANCED_STATE_CREATE_INFO_EXT = 1000148002
    ! Provided by VK_NV_fragment_coverage_to_color
    integer(c_int) :: COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV = 1000149000
    ! Provided by VK_NV_framebuffer_mixed_samples
    integer(c_int) :: COVERAGE_MODULATION_STATE_CREATE_INFO_NV = 1000152000
    ! Provided by VK_NV_shading_rate_image
    integer(c_int) :: VIEWPORT_SHADING_RATE_IMAGE_STATE_CREATE_INFO_NV = 1000164000
    ! Provided by VK_NV_shading_rate_image
    integer(c_int) :: VIEWPORT_COARSE_SAMPLE_ORDER_STATE_CREATE_INFO_NV = 1000164005
    ! Provided by VK_NV_representative_fragment_test
    integer(c_int) :: REPRESENTATIVE_FRAGMENT_TEST_STATE_CREATE_INFO_NV = 1000166001
    ! Provided by VK_AMD_pipeline_compiler_control
    integer(c_int) :: COMPILER_CONTROL_CREATE_INFO_AMD = 1000183000
    ! Provided by VK_NV_scissor_exclusive
    integer(c_int) :: VIEWPORT_EXCLUSIVE_SCISSOR_STATE_CREATE_INFO_NV = 1000205000
    ! Provided by VK_KHR_fragment_shading_rate
    integer(c_int) :: FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR = 1000226001
    ! Provided by VK_NV_coverage_reduction_mode
    integer(c_int) :: COVERAGE_REDUCTION_STATE_CREATE_INFO_NV = 1000250001
    ! Provided by VK_EXT_provoking_vertex
    integer(c_int) :: RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT = 1000254001
    ! Provided by VK_KHR_pipeline_executable_properties
    integer(c_int) :: INFO_KHR = 1000269001
    ! Provided by VK_KHR_pipeline_executable_properties
    integer(c_int) :: EXECUTABLE_PROPERTIES_KHR = 1000269002
    ! Provided by VK_KHR_pipeline_executable_properties
    integer(c_int) :: EXECUTABLE_INFO_KHR = 1000269003
    ! Provided by VK_KHR_pipeline_executable_properties
    integer(c_int) :: EXECUTABLE_STATISTIC_KHR = 1000269004
    ! Provided by VK_KHR_pipeline_executable_properties
    integer(c_int) :: EXECUTABLE_INTERNAL_REPRESENTATION_KHR = 1000269005
    ! Provided by VK_KHR_pipeline_library
    integer(c_int) :: LIBRARY_CREATE_INFO_KHR = 1000290000
    ! Provided by VK_NV_fragment_shading_rate_enums
    integer(c_int) :: FRAGMENT_SHADING_RATE_ENUM_STATE_CREATE_INFO_NV = 1000326002
    ! Provided by VK_EXT_depth_clip_control
    integer(c_int) :: VIEWPORT_DEPTH_CLIP_CONTROL_CREATE_INFO_EXT = 1000355001
    ! Provided by VK_EXT_pipeline_properties
    integer(c_int) :: PROPERTIES_IDENTIFIER_EXT = 1000372000
    ! Provided by VK_EXT_color_write_enable
    integer(c_int) :: COLOR_WRITE_CREATE_INFO_EXT = 1000381001
    ! Provided by VK_NV_device_generated_commands_compute
    integer(c_int) :: INDIRECT_DEVICE_ADDRESS_INFO_NV = 1000428002
    ! Provided by VK_EXT_shader_module_identifier
    integer(c_int) :: SHADER_STAGE_MODULE_IDENTIFIER_CREATE_INFO_EXT = 1000462002
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: CREATE_FLAGS_2_CREATE_INFO_KHR = 1000470005
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: BINARY_CREATE_INFO_KHR = 1000483001
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: BINARY_INFO_KHR = 1000483002
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: BINARY_KEY_KHR = 1000483003
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: BINARY_DATA_INFO_KHR = 1000483006
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: CREATE_INFO_KHR = 1000483007
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: BINARY_HANDLES_INFO_KHR = 1000483009
    ! Provided by VK_KHR_vertex_attribute_divisor
    integer(c_int) :: VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_KHR = 1000190001
    ! Provided by VK_KHR_line_rasterization
    integer(c_int) :: RASTERIZATION_LINE_STATE_CREATE_INFO_KHR = 1000259001
    ! Provided by VK_EXT_depth_clamp_control
    integer(c_int) :: VIEWPORT_DEPTH_CLAMP_CONTROL_CREATE_INFO_EXT = 1000582001
    ! Provided by VK_KHR_dynamic_rendering
    integer(c_int) :: RENDERING_CREATE_INFO_KHR = 1000044002
    ! Provided by VK_KHR_maintenance2
    integer(c_int) :: TESSELLATION_DOMAIN_ORIGIN_STATE_CREATE_INFO_KHR = 1000117003
    ! Provided by VK_EXT_vertex_attribute_divisor
    integer(c_int) :: VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT = 1000190001
    ! Provided by VK_EXT_pipeline_creation_feedback
    integer(c_int) :: CREATION_FEEDBACK_CREATE_INFO_EXT = 1000192000
    ! Provided by VK_EXT_subgroup_size_control
    integer(c_int) :: SHADER_STAGE_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT = 1000225001
    ! Provided by VK_EXT_line_rasterization
    integer(c_int) :: RASTERIZATION_LINE_STATE_CREATE_INFO_EXT = 1000259001
    ! Provided by VK_EXT_pipeline_properties
    integer(c_int) :: INFO_EXT = 1000269001
  end type t_pipeline


  ! Part of t_vk_structure_type.
  type t_video
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_CAPABILITIES_KHR = 1000038000
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000038001
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR = 1000038002
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_PICTURE_INFO_KHR = 1000038003
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_DPB_SLOT_INFO_KHR = 1000038004
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_NALU_SLICE_INFO_KHR = 1000038005
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_GOP_REMAINING_FRAME_INFO_KHR = 1000038006
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_PROFILE_INFO_KHR = 1000038007
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_RATE_CONTROL_INFO_KHR = 1000038008
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_RATE_CONTROL_LAYER_INFO_KHR = 1000038009
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_SESSION_CREATE_INFO_KHR = 1000038010
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_QUALITY_LEVEL_PROPERTIES_KHR = 1000038011
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_SESSION_PARAMETERS_GET_INFO_KHR = 1000038012
    ! Provided by VK_KHR_video_encode_h264
    integer(c_int) :: ENCODE_H264_SESSION_PARAMETERS_FEEDBACK_INFO_KHR = 1000038013
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_CAPABILITIES_KHR = 1000039000
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000039001
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR = 1000039002
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_PICTURE_INFO_KHR = 1000039003
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_DPB_SLOT_INFO_KHR = 1000039004
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_NALU_SLICE_SEGMENT_INFO_KHR = 1000039005
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_GOP_REMAINING_FRAME_INFO_KHR = 1000039006
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_PROFILE_INFO_KHR = 1000039007
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_RATE_CONTROL_INFO_KHR = 1000039009
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_RATE_CONTROL_LAYER_INFO_KHR = 1000039010
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_SESSION_CREATE_INFO_KHR = 1000039011
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_QUALITY_LEVEL_PROPERTIES_KHR = 1000039012
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_SESSION_PARAMETERS_GET_INFO_KHR = 1000039013
    ! Provided by VK_KHR_video_encode_h265
    integer(c_int) :: ENCODE_H265_SESSION_PARAMETERS_FEEDBACK_INFO_KHR = 1000039014
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_INFO_KHR = 1000299000
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_RATE_CONTROL_INFO_KHR = 1000299001
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_RATE_CONTROL_LAYER_INFO_KHR = 1000299002
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_CAPABILITIES_KHR = 1000299003
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_USAGE_INFO_KHR = 1000299004
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_QUALITY_LEVEL_PROPERTIES_KHR = 1000299007
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_QUALITY_LEVEL_INFO_KHR = 1000299008
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_SESSION_PARAMETERS_GET_INFO_KHR = 1000299009
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: ENCODE_SESSION_PARAMETERS_FEEDBACK_INFO_KHR = 1000299010
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: PROFILE_INFO_KHR = 1000023000
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: CAPABILITIES_KHR = 1000023001
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: PICTURE_RESOURCE_INFO_KHR = 1000023002
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: SESSION_MEMORY_REQUIREMENTS_KHR = 1000023003
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: SESSION_CREATE_INFO_KHR = 1000023005
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: SESSION_PARAMETERS_CREATE_INFO_KHR = 1000023006
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: SESSION_PARAMETERS_UPDATE_INFO_KHR = 1000023007
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: BEGIN_CODING_INFO_KHR = 1000023008
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: END_CODING_INFO_KHR = 1000023009
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: CODING_CONTROL_INFO_KHR = 1000023010
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: REFERENCE_SLOT_INFO_KHR = 1000023011
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: PROFILE_LIST_INFO_KHR = 1000023013
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: FORMAT_PROPERTIES_KHR = 1000023015
    ! Provided by VK_KHR_video_decode_queue
    integer(c_int) :: DECODE_INFO_KHR = 1000024000
    ! Provided by VK_KHR_video_decode_queue
    integer(c_int) :: DECODE_CAPABILITIES_KHR = 1000024001
    ! Provided by VK_KHR_video_decode_queue
    integer(c_int) :: DECODE_USAGE_INFO_KHR = 1000024002
    ! Provided by VK_KHR_video_decode_h264
    integer(c_int) :: DECODE_H264_CAPABILITIES_KHR = 1000040000
    ! Provided by VK_KHR_video_decode_h264
    integer(c_int) :: DECODE_H264_PICTURE_INFO_KHR = 1000040001
    ! Provided by VK_KHR_video_decode_h264
    integer(c_int) :: DECODE_H264_PROFILE_INFO_KHR = 1000040003
    ! Provided by VK_KHR_video_decode_h264
    integer(c_int) :: DECODE_H264_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000040004
    ! Provided by VK_KHR_video_decode_h264
    integer(c_int) :: DECODE_H264_SESSION_PARAMETERS_ADD_INFO_KHR = 1000040005
    ! Provided by VK_KHR_video_decode_h264
    integer(c_int) :: DECODE_H264_DPB_SLOT_INFO_KHR = 1000040006
    ! Provided by VK_KHR_video_decode_h265
    integer(c_int) :: DECODE_H265_CAPABILITIES_KHR = 1000187000
    ! Provided by VK_KHR_video_decode_h265
    integer(c_int) :: DECODE_H265_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000187001
    ! Provided by VK_KHR_video_decode_h265
    integer(c_int) :: DECODE_H265_SESSION_PARAMETERS_ADD_INFO_KHR = 1000187002
    ! Provided by VK_KHR_video_decode_h265
    integer(c_int) :: DECODE_H265_PROFILE_INFO_KHR = 1000187003
    ! Provided by VK_KHR_video_decode_h265
    integer(c_int) :: DECODE_H265_PICTURE_INFO_KHR = 1000187004
    ! Provided by VK_KHR_video_decode_h265
    integer(c_int) :: DECODE_H265_DPB_SLOT_INFO_KHR = 1000187005
    ! Provided by VK_KHR_video_decode_av1
    integer(c_int) :: DECODE_AV1_CAPABILITIES_KHR = 1000512000
    ! Provided by VK_KHR_video_decode_av1
    integer(c_int) :: DECODE_AV1_PICTURE_INFO_KHR = 1000512001
    ! Provided by VK_KHR_video_decode_av1
    integer(c_int) :: DECODE_AV1_PROFILE_INFO_KHR = 1000512003
    ! Provided by VK_KHR_video_decode_av1
    integer(c_int) :: DECODE_AV1_SESSION_PARAMETERS_CREATE_INFO_KHR = 1000512004
    ! Provided by VK_KHR_video_decode_av1
    integer(c_int) :: DECODE_AV1_DPB_SLOT_INFO_KHR = 1000512005
    ! Provided by VK_KHR_video_maintenance1
    integer(c_int) :: INLINE_QUERY_INFO_KHR = 1000515001
  end type t_video


  ! Part of t_vk_structure_type.
  type t_device
    integer(c_int) :: QUEUE_CREATE_INFO = 2
    integer(c_int) :: CREATE_INFO = 3
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: GROUP_RENDER_PASS_BEGIN_INFO = 1000060003
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: GROUP_COMMAND_BUFFER_BEGIN_INFO = 1000060004
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: GROUP_SUBMIT_INFO = 1000060005
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: GROUP_BIND_SPARSE_INFO = 1000060006
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: GROUP_DEVICE_CREATE_INFO = 1000070001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: QUEUE_INFO_2 = 1000145003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO = 1000257004
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: PRIVATE_DATA_CREATE_INFO = 1000295001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BUFFER_MEMORY_REQUIREMENTS = 1000413002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: IMAGE_MEMORY_REQUIREMENTS = 1000413003
    ! Provided by VK_VERSION_1_1 with VK_KHR_swapchain VK_KHR_device_group with VK_KHR_surface
    integer(c_int) :: GROUP_PRESENT_CAPABILITIES_KHR = 1000060007
    ! Provided by VK_VERSION_1_1 with VK_KHR_swapchain VK_KHR_device_group with VK_KHR_swapchain
    integer(c_int) :: GROUP_PRESENT_INFO_KHR = 1000060011
    ! Provided by VK_VERSION_1_1 with VK_KHR_swapchain VK_KHR_device_group with VK_KHR_swapchain
    integer(c_int) :: GROUP_SWAPCHAIN_CREATE_INFO_KHR = 1000060012
    ! Provided by VK_EXT_display_control
    integer(c_int) :: EVENT_INFO_EXT = 1000091001
    ! Provided by VK_KHR_global_priority
    integer(c_int) :: QUEUE_GLOBAL_PRIORITY_CREATE_INFO_KHR = 1000174000
    ! Provided by VK_AMD_memory_overallocation_behavior
    integer(c_int) :: MEMORY_OVERALLOCATION_CREATE_INFO_AMD = 1000189000
    ! Provided by VK_EXT_device_memory_report
    integer(c_int) :: DEVICE_MEMORY_REPORT_CREATE_INFO_EXT = 1000284001
    ! Provided by VK_EXT_device_memory_report
    integer(c_int) :: MEMORY_REPORT_CALLBACK_DATA_EXT = 1000284002
    ! Provided by VK_NV_device_diagnostics_config
    integer(c_int) :: DIAGNOSTICS_CONFIG_CREATE_INFO_NV = 1000300001
    ! Provided by VK_EXT_device_fault
    integer(c_int) :: FAULT_COUNTS_EXT = 1000341001
    ! Provided by VK_EXT_device_fault
    integer(c_int) :: FAULT_INFO_EXT = 1000341002
    ! Provided by VK_EXT_device_address_binding_report
    integer(c_int) :: ADDRESS_BINDING_CALLBACK_DATA_EXT = 1000354001
    ! Provided by VK_ARM_scheduling_controls
    integer(c_int) :: QUEUE_SHADER_CORE_CONTROL_CREATE_INFO_ARM = 1000417000
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: IMAGE_SUBRESOURCE_INFO_KHR = 1000470004
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: PIPELINE_BINARY_INTERNAL_CACHE_CONTROL_KHR = 1000483008
    ! Provided by VK_KHR_device_group
    integer(c_int) :: GROUP_RENDER_PASS_BEGIN_INFO_KHR = 1000060003
    ! Provided by VK_KHR_device_group
    integer(c_int) :: GROUP_COMMAND_BUFFER_BEGIN_INFO_KHR = 1000060004
    ! Provided by VK_KHR_device_group
    integer(c_int) :: GROUP_SUBMIT_INFO_KHR = 1000060005
    ! Provided by VK_KHR_device_group
    integer(c_int) :: GROUP_BIND_SPARSE_INFO_KHR = 1000060006
    ! Provided by VK_KHR_device_group_creation
    integer(c_int) :: GROUP_DEVICE_CREATE_INFO_KHR = 1000070001
    ! Provided by VK_EXT_global_priority
    integer(c_int) :: QUEUE_GLOBAL_PRIORITY_CREATE_INFO_EXT = 1000174000
    ! Provided by VK_KHR_buffer_device_address
    integer(c_int) :: MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR = 1000257004
    ! Provided by VK_EXT_private_data
    integer(c_int) :: PRIVATE_DATA_CREATE_INFO_EXT = 1000295001
    ! Provided by VK_KHR_maintenance4
    integer(c_int) :: BUFFER_MEMORY_REQUIREMENTS_KHR = 1000413002
    ! Provided by VK_KHR_maintenance4
    integer(c_int) :: IMAGE_MEMORY_REQUIREMENTS_KHR = 1000413003
  end type t_device


  ! Part of t_vk_structure_type.
  type t_memory
    integer(c_int) :: ALLOCATE_INFO = 5
    integer(c_int) :: BARRIER = 46
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: DEDICATED_REQUIREMENTS = 1000127000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: DEDICATED_ALLOCATE_INFO = 1000127001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: ALLOCATE_FLAGS_INFO = 1000060000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: REQUIREMENTS_2 = 1000146003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO = 1000257003
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BARRIER_2 = 1000314000
    ! Provided by VK_KHR_external_memory_win32
    integer(c_int) :: WIN32_HANDLE_PROPERTIES_KHR = 1000073002
    ! Provided by VK_KHR_external_memory_win32
    integer(c_int) :: GET_WIN32_HANDLE_INFO_KHR = 1000073003
    ! Provided by VK_KHR_external_memory_fd
    integer(c_int) :: FD_PROPERTIES_KHR = 1000074001
    ! Provided by VK_KHR_external_memory_fd
    integer(c_int) :: GET_FD_INFO_KHR = 1000074002
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer
    integer(c_int) :: GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129004
    ! Provided by VK_EXT_external_memory_host
    integer(c_int) :: HOST_POINTER_PROPERTIES_EXT = 1000178001
    ! Provided by VK_EXT_memory_priority
    integer(c_int) :: PRIORITY_ALLOCATE_INFO_EXT = 1000238001
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: TO_IMAGE_COPY_EXT = 1000270002
    ! Provided by VK_KHR_map_memory2
    integer(c_int) :: MAP_INFO_KHR = 1000271000
    ! Provided by VK_KHR_map_memory2
    integer(c_int) :: UNMAP_INFO_KHR = 1000271001
    ! Provided by VK_EXT_map_memory_placed
    integer(c_int) :: MAP_PLACED_INFO_EXT = 1000272002
    ! Provided by VK_FUCHSIA_external_memory
    integer(c_int) :: ZIRCON_HANDLE_PROPERTIES_FUCHSIA = 1000364001
    ! Provided by VK_FUCHSIA_external_memory
    integer(c_int) :: GET_ZIRCON_HANDLE_INFO_FUCHSIA = 1000364002
    ! Provided by VK_NV_external_memory_rdma
    integer(c_int) :: GET_REMOTE_ADDRESS_INFO_NV = 1000371000
    ! Provided by VK_KHR_device_group
    integer(c_int) :: ALLOCATE_FLAGS_INFO_KHR = 1000060000
    ! Provided by VK_KHR_dedicated_allocation
    integer(c_int) :: DEDICATED_REQUIREMENTS_KHR = 1000127000
    ! Provided by VK_KHR_dedicated_allocation
    integer(c_int) :: DEDICATED_ALLOCATE_INFO_KHR = 1000127001
    ! Provided by VK_KHR_get_memory_requirements2
    integer(c_int) :: REQUIREMENTS_2_KHR = 1000146003
    ! Provided by VK_KHR_buffer_device_address
    integer(c_int) :: OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR = 1000257003
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: BARRIER_2_KHR = 1000314000
  end type t_memory


  ! Part of t_vk_structure_type.
  type t_image
    integer(c_int) :: CREATE_INFO = 14
    integer(c_int) :: VIEW_CREATE_INFO = 15
    integer(c_int) :: MEMORY_BARRIER = 45
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: MEMORY_REQUIREMENTS_INFO_2 = 1000146001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SPARSE_MEMORY_REQUIREMENTS_INFO_2 = 1000146002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: FORMAT_PROPERTIES_2 = 1000059003
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: VIEW_USAGE_CREATE_INFO = 1000117002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: PLANE_MEMORY_REQUIREMENTS_INFO = 1000156003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: FORMAT_LIST_CREATE_INFO = 1000147000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: STENCIL_USAGE_CREATE_INFO = 1000246000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: MEMORY_BARRIER_2 = 1000314002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COPY_2 = 1000337007
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BLIT_2 = 1000337008
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: RESOLVE_2 = 1000337010
    ! Provided by VK_VERSION_1_1 with VK_KHR_swapchain VK_KHR_device_group with VK_KHR_swapchain
    integer(c_int) :: SWAPCHAIN_CREATE_INFO_KHR = 1000060008
    ! Provided by VK_NVX_image_view_handle
    integer(c_int) :: VIEW_HANDLE_INFO_NVX = 1000030000
    ! Provided by VK_NVX_image_view_handle
    integer(c_int) :: VIEW_ADDRESS_PROPERTIES_NVX = 1000030001
    ! Provided by VK_EXT_astc_decode_mode
    integer(c_int) :: VIEW_ASTC_DECODE_MODE_EXT = 1000067000
    ! Provided by VK_EXT_image_drm_format_modifier
    integer(c_int) :: DRM_FORMAT_MODIFIER_LIST_CREATE_INFO_EXT = 1000158003
    ! Provided by VK_EXT_image_drm_format_modifier
    integer(c_int) :: DRM_FORMAT_MODIFIER_EXPLICIT_CREATE_INFO_EXT = 1000158004
    ! Provided by VK_EXT_image_drm_format_modifier
    integer(c_int) :: DRM_FORMAT_MODIFIER_PROPERTIES_EXT = 1000158005
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: TO_MEMORY_COPY_EXT = 1000270003
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316006
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: VIEW_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316007
    ! Provided by VK_EXT_image_compression_control
    integer(c_int) :: COMPRESSION_CONTROL_EXT = 1000338001
    ! Provided by VK_EXT_image_compression_control
    integer(c_int) :: COMPRESSION_PROPERTIES_EXT = 1000338004
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: CONSTRAINTS_INFO_FUCHSIA = 1000366006
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: FORMAT_CONSTRAINTS_INFO_FUCHSIA = 1000366007
    ! Provided by VK_EXT_image_view_min_lod
    integer(c_int) :: VIEW_MIN_LOD_CREATE_INFO_EXT = 1000391001
    ! Provided by VK_EXT_image_sliced_view_of_3d
    integer(c_int) :: VIEW_SLICED_CREATE_INFO_EXT = 1000418001
    ! Provided by VK_QCOM_image_processing
    integer(c_int) :: VIEW_SAMPLE_WEIGHT_CREATE_INFO_QCOM = 1000440002
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: SUBRESOURCE_2_KHR = 1000338003
    ! Provided by VK_MESA_image_alignment_control
    integer(c_int) :: ALIGNMENT_CONTROL_CREATE_INFO_MESA = 1000575002
    ! Provided by VK_KHR_get_physical_device_properties2
    integer(c_int) :: FORMAT_PROPERTIES_2_KHR = 1000059003
    ! Provided by VK_KHR_maintenance2
    integer(c_int) :: VIEW_USAGE_CREATE_INFO_KHR = 1000117002
    ! Provided by VK_KHR_get_memory_requirements2
    integer(c_int) :: MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146001
    ! Provided by VK_KHR_get_memory_requirements2
    integer(c_int) :: SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146002
    ! Provided by VK_KHR_image_format_list
    integer(c_int) :: FORMAT_LIST_CREATE_INFO_KHR = 1000147000
    ! Provided by VK_KHR_sampler_ycbcr_conversion
    integer(c_int) :: PLANE_MEMORY_REQUIREMENTS_INFO_KHR = 1000156003
    ! Provided by VK_EXT_separate_stencil_usage
    integer(c_int) :: STENCIL_USAGE_CREATE_INFO_EXT = 1000246000
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: MEMORY_BARRIER_2_KHR = 1000314002
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: COPY_2_KHR = 1000337007
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: BLIT_2_KHR = 1000337008
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: RESOLVE_2_KHR = 1000337010
    ! Provided by VK_EXT_image_compression_control
    integer(c_int) :: SUBRESOURCE_2_EXT = 1000338003
  end type t_image


  type t_vk_structure_type
    type(t_physical_device) :: PHYSICAL_DEVICE = t_physical_device()
    type(t_pipeline) :: PIPELINE = t_pipeline()
    type(t_video) :: VIDEO = t_video()
    type(t_device) :: DEVICE = t_device()
    type(t_memory) :: MEMORY = t_memory()
    type(t_image) :: IMAGE = t_image()

    integer(c_int) :: APPLICATION_INFO = 0
    integer(c_int) :: INSTANCE_CREATE_INFO = 1
    integer(c_int) :: SUBMIT_INFO = 4
    integer(c_int) :: MAPPED_MEMORY_RANGE = 6
    integer(c_int) :: BIND_SPARSE_INFO = 7
    integer(c_int) :: FENCE_CREATE_INFO = 8
    integer(c_int) :: SEMAPHORE_CREATE_INFO = 9
    integer(c_int) :: EVENT_CREATE_INFO = 10
    integer(c_int) :: QUERY_POOL_CREATE_INFO = 11
    integer(c_int) :: BUFFER_CREATE_INFO = 12
    integer(c_int) :: BUFFER_VIEW_CREATE_INFO = 13
    integer(c_int) :: SHADER_MODULE_CREATE_INFO = 16
    integer(c_int) :: GRAPHICS_PIPELINE_CREATE_INFO = 28
    integer(c_int) :: COMPUTE_PIPELINE_CREATE_INFO = 29
    integer(c_int) :: SAMPLER_CREATE_INFO = 31
    integer(c_int) :: DESCRIPTOR_SET_LAYOUT_CREATE_INFO = 32
    integer(c_int) :: DESCRIPTOR_POOL_CREATE_INFO = 33
    integer(c_int) :: DESCRIPTOR_SET_ALLOCATE_INFO = 34
    integer(c_int) :: WRITE_DESCRIPTOR_SET = 35
    integer(c_int) :: COPY_DESCRIPTOR_SET = 36
    integer(c_int) :: FRAMEBUFFER_CREATE_INFO = 37
    integer(c_int) :: RENDER_PASS_CREATE_INFO = 38
    integer(c_int) :: COMMAND_POOL_CREATE_INFO = 39
    integer(c_int) :: COMMAND_BUFFER_ALLOCATE_INFO = 40
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_INFO = 4112
    integer(c_int) :: COMMAND_BUFFER_BEGIN_INFO = 42
    integer(c_int) :: RENDER_PASS_BEGIN_INFO = 43
    integer(c_int) :: BUFFER_MEMORY_BARRIER = 44
    integer(c_int) :: LOADER_INSTANCE_CREATE_INFO = 47
    integer(c_int) :: LOADER_DEVICE_CREATE_INFO = 48
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: BIND_BUFFER_MEMORY_INFO = 1000157000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: BIND_IMAGE_MEMORY_INFO = 1000157001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO = 1000060013
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO = 1000060014
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: BUFFER_MEMORY_REQUIREMENTS_INFO_2 = 1000146000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SPARSE_IMAGE_MEMORY_REQUIREMENTS_2 = 1000146004
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: FORMAT_PROPERTIES_2 = 1000059002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: QUEUE_FAMILY_PROPERTIES_2 = 1000059005
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SPARSE_IMAGE_FORMAT_PROPERTIES_2 = 1000059007
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO = 1000117001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: RENDER_PASS_MULTIVIEW_CREATE_INFO = 1000053000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: PROTECTED_SUBMIT_INFO = 1000145000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_CREATE_INFO = 1000156000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_INFO = 1000156001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: BIND_IMAGE_PLANE_MEMORY_INFO = 1000156002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES = 1000156005
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO = 1000085000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_IMAGE_FORMAT_PROPERTIES = 1000071001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_BUFFER_PROPERTIES = 1000071003
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_MEMORY_BUFFER_CREATE_INFO = 1000072000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_MEMORY_IMAGE_CREATE_INFO = 1000072001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXPORT_MEMORY_ALLOCATE_INFO = 1000072002
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_FENCE_PROPERTIES = 1000112001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXPORT_FENCE_CREATE_INFO = 1000113000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXPORT_SEMAPHORE_CREATE_INFO = 1000077000
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: EXTERNAL_SEMAPHORE_PROPERTIES = 1000076001
    ! Provided by VK_VERSION_1_1
    integer(c_int) :: DESCRIPTOR_SET_LAYOUT_SUPPORT = 1000168001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: ATTACHMENT_DESCRIPTION_2 = 1000109000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: ATTACHMENT_REFERENCE_2 = 1000109001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SUBPASS_DESCRIPTION_2 = 1000109002
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SUBPASS_DEPENDENCY_2 = 1000109003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: RENDER_PASS_CREATE_INFO_2 = 1000109004
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SUBPASS_BEGIN_INFO = 1000109005
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SUBPASS_END_INFO = 1000109006
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO = 1000161000
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO = 1000161003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT = 1000161004
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE = 1000199001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SAMPLER_REDUCTION_MODE_CREATE_INFO = 1000130001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: FRAMEBUFFER_ATTACHMENTS_CREATE_INFO = 1000108001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: FRAMEBUFFER_ATTACHMENT_IMAGE_INFO = 1000108002
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: RENDER_PASS_ATTACHMENT_BEGIN_INFO = 1000108003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: ATTACHMENT_REFERENCE_STENCIL_LAYOUT = 1000241001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT = 1000241002
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SEMAPHORE_TYPE_CREATE_INFO = 1000207002
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: TIMELINE_SEMAPHORE_SUBMIT_INFO = 1000207003
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SEMAPHORE_WAIT_INFO = 1000207004
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: SEMAPHORE_SIGNAL_INFO = 1000207005
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_INFO = 1000244001
    ! Provided by VK_VERSION_1_2
    integer(c_int) :: BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO = 1000257002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: PRIVATE_DATA_SLOT_CREATE_INFO = 1000295002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BUFFER_MEMORY_BARRIER_2 = 1000314001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: DEPENDENCY_INFO = 1000314003
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SUBMIT_INFO_2 = 1000314004
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: SEMAPHORE_SUBMIT_INFO = 1000314005
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COMMAND_BUFFER_SUBMIT_INFO = 1000314006
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COPY_BUFFER_INFO_2 = 1000337000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COPY_IMAGE_INFO_2 = 1000337001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COPY_BUFFER_TO_IMAGE_INFO_2 = 1000337002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COPY_IMAGE_TO_BUFFER_INFO_2 = 1000337003
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BLIT_IMAGE_INFO_2 = 1000337004
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: RESOLVE_IMAGE_INFO_2 = 1000337005
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BUFFER_COPY_2 = 1000337006
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: BUFFER_IMAGE_COPY_2 = 1000337009
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK = 1000138002
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO = 1000138003
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: RENDERING_INFO = 1000044000
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: RENDERING_ATTACHMENT_INFO = 1000044001
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_RENDERING_INFO = 1000044004
    ! Provided by VK_VERSION_1_3
    integer(c_int) :: FORMAT_PROPERTIES_3 = 1000360000
    ! Provided by VK_KHR_swapchain
    integer(c_int) :: SWAPCHAIN_CREATE_INFO_KHR = 1000001000
    ! Provided by VK_KHR_swapchain
    integer(c_int) :: PRESENT_INFO_KHR = 1000001001
    ! Provided by VK_VERSION_1_1 with VK_KHR_swapchain VK_KHR_device_group with VK_KHR_swapchain
    integer(c_int) :: BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR = 1000060009
    ! Provided by VK_VERSION_1_1 with VK_KHR_swapchain VK_KHR_device_group with VK_KHR_swapchain
    integer(c_int) :: ACQUIRE_NEXT_IMAGE_INFO_KHR = 1000060010
    ! Provided by VK_KHR_display
    integer(c_int) :: DISPLAY_MODE_CREATE_INFO_KHR = 1000002000
    ! Provided by VK_KHR_display
    integer(c_int) :: DISPLAY_SURFACE_CREATE_INFO_KHR = 1000002001
    ! Provided by VK_KHR_display_swapchain
    integer(c_int) :: DISPLAY_PRESENT_INFO_KHR = 1000003000
    ! Provided by VK_KHR_xlib_surface
    integer(c_int) :: XLIB_SURFACE_CREATE_INFO_KHR = 1000004000
    ! Provided by VK_KHR_xcb_surface
    integer(c_int) :: XCB_SURFACE_CREATE_INFO_KHR = 1000005000
    ! Provided by VK_KHR_wayland_surface
    integer(c_int) :: WAYLAND_SURFACE_CREATE_INFO_KHR = 1000006000
    ! Provided by VK_KHR_android_surface
    integer(c_int) :: ANDROID_SURFACE_CREATE_INFO_KHR = 1000008000
    ! Provided by VK_KHR_win32_surface
    integer(c_int) :: WIN32_SURFACE_CREATE_INFO_KHR = 1000009000
    ! Provided by VK_EXT_debug_report
    integer(c_int) :: DEBUG_REPORT_CALLBACK_CREATE_INFO_EXT = 1000011000
    ! Provided by VK_EXT_debug_marker
    integer(c_int) :: DEBUG_MARKER_OBJECT_NAME_INFO_EXT = 1000022000
    ! Provided by VK_EXT_debug_marker
    integer(c_int) :: DEBUG_MARKER_OBJECT_TAG_INFO_EXT = 1000022001
    ! Provided by VK_EXT_debug_marker
    integer(c_int) :: DEBUG_MARKER_MARKER_INFO_EXT = 1000022002
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: BIND_VIDEO_SESSION_MEMORY_INFO_KHR = 1000023004
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: QUEUE_FAMILY_VIDEO_PROPERTIES_KHR = 1000023012
    ! Provided by VK_KHR_video_queue
    integer(c_int) :: QUEUE_FAMILY_QUERY_RESULT_STATUS_PROPERTIES_KHR = 1000023016
    ! Provided by VK_NV_dedicated_allocation
    integer(c_int) :: DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV = 1000026000
    ! Provided by VK_NV_dedicated_allocation
    integer(c_int) :: DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV = 1000026001
    ! Provided by VK_NV_dedicated_allocation
    integer(c_int) :: DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV = 1000026002
    ! Provided by VK_NVX_binary_import
    integer(c_int) :: CU_MODULE_CREATE_INFO_NVX = 1000029000
    ! Provided by VK_NVX_binary_import
    integer(c_int) :: CU_FUNCTION_CREATE_INFO_NVX = 1000029001
    ! Provided by VK_NVX_binary_import
    integer(c_int) :: CU_LAUNCH_INFO_NVX = 1000029002
    ! Provided by VK_AMD_texture_gather_bias_lod
    integer(c_int) :: TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD = 1000041000
    ! Provided by VK_GGP_stream_descriptor_surface
    integer(c_int) :: STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP = 1000049000
    ! Provided by VK_NV_external_memory
    integer(c_int) :: EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV = 1000056000
    ! Provided by VK_NV_external_memory
    integer(c_int) :: EXPORT_MEMORY_ALLOCATE_INFO_NV = 1000056001
    ! Provided by VK_NV_external_memory_win32
    integer(c_int) :: IMPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057000
    ! Provided by VK_NV_external_memory_win32
    integer(c_int) :: EXPORT_MEMORY_WIN32_HANDLE_INFO_NV = 1000057001
    ! Provided by VK_NV_win32_keyed_mutex
    integer(c_int) :: WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV = 1000058000
    ! Provided by VK_EXT_validation_flags
    integer(c_int) :: VALIDATION_FLAGS_EXT = 1000061000
    ! Provided by VK_NN_vi_surface
    integer(c_int) :: VI_SURFACE_CREATE_INFO_NN = 1000062000
    ! Provided by VK_KHR_external_memory_win32
    integer(c_int) :: IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073000
    ! Provided by VK_KHR_external_memory_win32
    integer(c_int) :: EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR = 1000073001
    ! Provided by VK_KHR_external_memory_fd
    integer(c_int) :: IMPORT_MEMORY_FD_INFO_KHR = 1000074000
    ! Provided by VK_KHR_win32_keyed_mutex
    integer(c_int) :: WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_KHR = 1000075000
    ! Provided by VK_KHR_external_semaphore_win32
    integer(c_int) :: IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078000
    ! Provided by VK_KHR_external_semaphore_win32
    integer(c_int) :: EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR = 1000078001
    ! Provided by VK_KHR_external_semaphore_win32
    integer(c_int) :: D3D12_FENCE_SUBMIT_INFO_KHR = 1000078002
    ! Provided by VK_KHR_external_semaphore_win32
    integer(c_int) :: SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR = 1000078003
    ! Provided by VK_KHR_external_semaphore_fd
    integer(c_int) :: IMPORT_SEMAPHORE_FD_INFO_KHR = 1000079000
    ! Provided by VK_KHR_external_semaphore_fd
    integer(c_int) :: SEMAPHORE_GET_FD_INFO_KHR = 1000079001
    ! Provided by VK_EXT_conditional_rendering
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_CONDITIONAL_RENDERING_INFO_EXT = 1000081000
    ! Provided by VK_EXT_conditional_rendering
    integer(c_int) :: CONDITIONAL_RENDERING_BEGIN_INFO_EXT = 1000081002
    ! Provided by VK_KHR_incremental_present
    integer(c_int) :: PRESENT_REGIONS_KHR = 1000084000
    ! Provided by VK_EXT_display_surface_counter
    integer(c_int) :: SURFACE_CAPABILITIES_2_EXT = 1000090000
    ! Provided by VK_EXT_display_control
    integer(c_int) :: DISPLAY_POWER_INFO_EXT = 1000091000
    ! Provided by VK_EXT_display_control
    integer(c_int) :: DISPLAY_EVENT_INFO_EXT = 1000091002
    ! Provided by VK_EXT_display_control
    integer(c_int) :: SWAPCHAIN_COUNTER_CREATE_INFO_EXT = 1000091003
    ! Provided by VK_GOOGLE_display_timing
    integer(c_int) :: PRESENT_TIMES_INFO_GOOGLE = 1000092000
    ! Provided by VK_NVX_multiview_per_view_attributes with VK_VERSION_1_3 or VK_KHR_dynamic_rendering
    integer(c_int) :: MULTIVIEW_PER_VIEW_ATTRIBUTES_INFO_NVX = 1000044009
    ! Provided by VK_EXT_hdr_metadata
    integer(c_int) :: HDR_METADATA_EXT = 1000105000
    ! Provided by VK_KHR_shared_presentable_image
    integer(c_int) :: SHARED_PRESENT_SURFACE_CAPABILITIES_KHR = 1000111000
    ! Provided by VK_KHR_external_fence_win32
    integer(c_int) :: IMPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114000
    ! Provided by VK_KHR_external_fence_win32
    integer(c_int) :: EXPORT_FENCE_WIN32_HANDLE_INFO_KHR = 1000114001
    ! Provided by VK_KHR_external_fence_win32
    integer(c_int) :: FENCE_GET_WIN32_HANDLE_INFO_KHR = 1000114002
    ! Provided by VK_KHR_external_fence_fd
    integer(c_int) :: IMPORT_FENCE_FD_INFO_KHR = 1000115000
    ! Provided by VK_KHR_external_fence_fd
    integer(c_int) :: FENCE_GET_FD_INFO_KHR = 1000115001
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR = 1000116002
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: PERFORMANCE_QUERY_SUBMIT_INFO_KHR = 1000116003
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: ACQUIRE_PROFILING_LOCK_INFO_KHR = 1000116004
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: PERFORMANCE_COUNTER_KHR = 1000116005
    ! Provided by VK_KHR_performance_query
    integer(c_int) :: PERFORMANCE_COUNTER_DESCRIPTION_KHR = 1000116006
    ! Provided by VK_KHR_get_surface_capabilities2
    integer(c_int) :: SURFACE_CAPABILITIES_2_KHR = 1000119001
    ! Provided by VK_KHR_get_surface_capabilities2
    integer(c_int) :: SURFACE_FORMAT_2_KHR = 1000119002
    ! Provided by VK_KHR_get_display_properties2
    integer(c_int) :: DISPLAY_PROPERTIES_2_KHR = 1000121000
    ! Provided by VK_KHR_get_display_properties2
    integer(c_int) :: DISPLAY_PLANE_PROPERTIES_2_KHR = 1000121001
    ! Provided by VK_KHR_get_display_properties2
    integer(c_int) :: DISPLAY_MODE_PROPERTIES_2_KHR = 1000121002
    ! Provided by VK_KHR_get_display_properties2
    integer(c_int) :: DISPLAY_PLANE_INFO_2_KHR = 1000121003
    ! Provided by VK_KHR_get_display_properties2
    integer(c_int) :: DISPLAY_PLANE_CAPABILITIES_2_KHR = 1000121004
    ! Provided by VK_MVK_ios_surface
    integer(c_int) :: IOS_SURFACE_CREATE_INFO_MVK = 1000122000
    ! Provided by VK_MVK_macos_surface
    integer(c_int) :: MACOS_SURFACE_CREATE_INFO_MVK = 1000123000
    ! Provided by VK_EXT_debug_utils
    integer(c_int) :: DEBUG_UTILS_OBJECT_NAME_INFO_EXT = 1000128000
    ! Provided by VK_EXT_debug_utils
    integer(c_int) :: DEBUG_UTILS_OBJECT_TAG_INFO_EXT = 1000128001
    ! Provided by VK_EXT_debug_utils
    integer(c_int) :: DEBUG_UTILS_LABEL_EXT = 1000128002
    ! Provided by VK_EXT_debug_utils
    integer(c_int) :: DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT = 1000128003
    ! Provided by VK_EXT_debug_utils
    integer(c_int) :: DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT = 1000128004
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer
    integer(c_int) :: ANDROID_HARDWARE_BUFFER_USAGE_ANDROID = 1000129000
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer
    integer(c_int) :: ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID = 1000129001
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer
    integer(c_int) :: ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID = 1000129002
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer
    integer(c_int) :: IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID = 1000129003
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer
    integer(c_int) :: EXTERNAL_FORMAT_ANDROID = 1000129005
    ! Provided by VK_ANDROID_external_memory_android_hardware_buffer with VK_KHR_format_feature_flags2 or VK_VERSION_1_3
    integer(c_int) :: ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID = 1000129006
    ! Provided by VK_AMD_mixed_attachment_samples with VK_VERSION_1_3 or VK_KHR_dynamic_rendering
    integer(c_int) :: ATTACHMENT_SAMPLE_COUNT_INFO_AMD = 1000044008
    ! Provided by VK_EXT_sample_locations
    integer(c_int) :: SAMPLE_LOCATIONS_INFO_EXT = 1000143000
    ! Provided by VK_EXT_sample_locations
    integer(c_int) :: RENDER_PASS_SAMPLE_LOCATIONS_BEGIN_INFO_EXT = 1000143001
    ! Provided by VK_EXT_sample_locations
    integer(c_int) :: MULTISAMPLE_PROPERTIES_EXT = 1000143004
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_KHR = 1000150007
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_BUILD_GEOMETRY_INFO_KHR = 1000150000
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_DEVICE_ADDRESS_INFO_KHR = 1000150002
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_GEOMETRY_AABBS_DATA_KHR = 1000150003
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_GEOMETRY_INSTANCES_DATA_KHR = 1000150004
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_GEOMETRY_TRIANGLES_DATA_KHR = 1000150005
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_GEOMETRY_KHR = 1000150006
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_VERSION_INFO_KHR = 1000150009
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: COPY_ACCELERATION_STRUCTURE_INFO_KHR = 1000150010
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: COPY_ACCELERATION_STRUCTURE_TO_MEMORY_INFO_KHR = 1000150011
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: COPY_MEMORY_TO_ACCELERATION_STRUCTURE_INFO_KHR = 1000150012
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_CREATE_INFO_KHR = 1000150017
    ! Provided by VK_KHR_acceleration_structure
    integer(c_int) :: ACCELERATION_STRUCTURE_BUILD_SIZES_INFO_KHR = 1000150020
    ! Provided by VK_KHR_ray_tracing_pipeline
    integer(c_int) :: RAY_TRACING_PIPELINE_CREATE_INFO_KHR = 1000150015
    ! Provided by VK_KHR_ray_tracing_pipeline
    integer(c_int) :: RAY_TRACING_SHADER_GROUP_CREATE_INFO_KHR = 1000150016
    ! Provided by VK_KHR_ray_tracing_pipeline
    integer(c_int) :: RAY_TRACING_PIPELINE_INTERFACE_CREATE_INFO_KHR = 1000150018
    ! Provided by VK_EXT_image_drm_format_modifier
    integer(c_int) :: DRM_FORMAT_MODIFIER_PROPERTIES_LIST_EXT = 1000158000
    ! Provided by VK_EXT_image_drm_format_modifier with VK_KHR_format_feature_flags2 or VK_VERSION_1_3
    integer(c_int) :: DRM_FORMAT_MODIFIER_PROPERTIES_LIST_2_EXT = 1000158006
    ! Provided by VK_EXT_validation_cache
    integer(c_int) :: VALIDATION_CACHE_CREATE_INFO_EXT = 1000160000
    ! Provided by VK_EXT_validation_cache
    integer(c_int) :: SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT = 1000160001
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: RAY_TRACING_PIPELINE_CREATE_INFO_NV = 1000165000
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: ACCELERATION_STRUCTURE_CREATE_INFO_NV = 1000165001
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: GEOMETRY_NV = 1000165003
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: GEOMETRY_TRIANGLES_NV = 1000165004
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: GEOMETRY_AABB_NV = 1000165005
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: BIND_ACCELERATION_STRUCTURE_MEMORY_INFO_NV = 1000165006
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: WRITE_DESCRIPTOR_SET_ACCELERATION_STRUCTURE_NV = 1000165007
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_INFO_NV = 1000165008
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: RAY_TRACING_SHADER_GROUP_CREATE_INFO_NV = 1000165011
    ! Provided by VK_NV_ray_tracing
    integer(c_int) :: ACCELERATION_STRUCTURE_INFO_NV = 1000165012
    ! Provided by VK_EXT_filter_cubic
    integer(c_int) :: FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT = 1000170001
    ! Provided by VK_EXT_external_memory_host
    integer(c_int) :: IMPORT_MEMORY_HOST_POINTER_INFO_EXT = 1000178000
    ! Provided by VK_KHR_global_priority
    integer(c_int) :: QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_KHR = 1000388001
    ! Provided by VK_GGP_frame_token
    integer(c_int) :: PRESENT_FRAME_TOKEN_GGP = 1000191000
    ! Provided by VK_NV_device_diagnostic_checkpoints
    integer(c_int) :: CHECKPOINT_DATA_NV = 1000206000
    ! Provided by VK_NV_device_diagnostic_checkpoints
    integer(c_int) :: QUEUE_FAMILY_CHECKPOINT_PROPERTIES_NV = 1000206001
    ! Provided by VK_NV_device_diagnostic_checkpoints with VK_VERSION_1_3 or VK_KHR_synchronization2
    integer(c_int) :: QUEUE_FAMILY_CHECKPOINT_PROPERTIES_2_NV = 1000314008
    ! Provided by VK_NV_device_diagnostic_checkpoints with VK_VERSION_1_3 or VK_KHR_synchronization2
    integer(c_int) :: CHECKPOINT_DATA_2_NV = 1000314009
    ! Provided by VK_INTEL_performance_query
    integer(c_int) :: QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL = 1000210000
    ! Provided by VK_INTEL_performance_query
    integer(c_int) :: INITIALIZE_PERFORMANCE_API_INFO_INTEL = 1000210001
    ! Provided by VK_INTEL_performance_query
    integer(c_int) :: PERFORMANCE_MARKER_INFO_INTEL = 1000210002
    ! Provided by VK_INTEL_performance_query
    integer(c_int) :: PERFORMANCE_STREAM_MARKER_INFO_INTEL = 1000210003
    ! Provided by VK_INTEL_performance_query
    integer(c_int) :: PERFORMANCE_OVERRIDE_INFO_INTEL = 1000210004
    ! Provided by VK_INTEL_performance_query
    integer(c_int) :: PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL = 1000210005
    ! Provided by VK_AMD_display_native_hdr
    integer(c_int) :: DISPLAY_NATIVE_HDR_SURFACE_CAPABILITIES_AMD = 1000213000
    ! Provided by VK_AMD_display_native_hdr
    integer(c_int) :: SWAPCHAIN_DISPLAY_NATIVE_HDR_CREATE_INFO_AMD = 1000213001
    ! Provided by VK_FUCHSIA_imagepipe_surface
    integer(c_int) :: IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA = 1000214000
    ! Provided by VK_EXT_metal_surface
    integer(c_int) :: METAL_SURFACE_CREATE_INFO_EXT = 1000217000
    ! Provided by VK_EXT_fragment_density_map
    integer(c_int) :: RENDER_PASS_FRAGMENT_DENSITY_MAP_CREATE_INFO_EXT = 1000218002
    ! Provided by VK_EXT_fragment_density_map with VK_VERSION_1_3 or VK_KHR_dynamic_rendering
    integer(c_int) :: RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_INFO_EXT = 1000044007
    ! Provided by VK_KHR_fragment_shading_rate
    integer(c_int) :: FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR = 1000226000
    ! Provided by VK_KHR_fragment_shading_rate with VK_VERSION_1_3 or VK_KHR_dynamic_rendering
    integer(c_int) :: RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR = 1000044006
    ! Provided by VK_KHR_dynamic_rendering_local_read
    integer(c_int) :: RENDERING_ATTACHMENT_LOCATION_INFO_KHR = 1000232001
    ! Provided by VK_KHR_dynamic_rendering_local_read
    integer(c_int) :: RENDERING_INPUT_ATTACHMENT_INDEX_INFO_KHR = 1000232002
    ! Provided by VK_KHR_surface_protected_capabilities
    integer(c_int) :: SURFACE_PROTECTED_CAPABILITIES_KHR = 1000239000
    ! Provided by VK_EXT_buffer_device_address
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_CREATE_INFO_EXT = 1000244002
    ! Provided by VK_EXT_validation_features
    integer(c_int) :: VALIDATION_FEATURES_EXT = 1000247000
    ! Provided by VK_NV_cooperative_matrix
    integer(c_int) :: COOPERATIVE_MATRIX_PROPERTIES_NV = 1000249001
    ! Provided by VK_NV_coverage_reduction_mode
    integer(c_int) :: FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV = 1000250002
    ! Provided by VK_EXT_full_screen_exclusive
    integer(c_int) :: SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT = 1000255000
    ! Provided by VK_EXT_full_screen_exclusive
    integer(c_int) :: SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT = 1000255002
    ! Provided by VK_KHR_win32_surface with VK_EXT_full_screen_exclusive
    integer(c_int) :: SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT = 1000255001
    ! Provided by VK_EXT_headless_surface
    integer(c_int) :: HEADLESS_SURFACE_CREATE_INFO_EXT = 1000256000
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: COPY_IMAGE_TO_MEMORY_INFO_EXT = 1000270004
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: COPY_MEMORY_TO_IMAGE_INFO_EXT = 1000270005
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: HOST_IMAGE_LAYOUT_TRANSITION_INFO_EXT = 1000270006
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: COPY_IMAGE_TO_IMAGE_INFO_EXT = 1000270007
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: SUBRESOURCE_HOST_MEMCPY_SIZE_EXT = 1000270008
    ! Provided by VK_EXT_host_image_copy
    integer(c_int) :: HOST_IMAGE_COPY_DEVICE_PERFORMANCE_QUERY_EXT = 1000270009
    ! Provided by VK_EXT_surface_maintenance1
    integer(c_int) :: SURFACE_PRESENT_MODE_EXT = 1000274000
    ! Provided by VK_EXT_surface_maintenance1
    integer(c_int) :: SURFACE_PRESENT_SCALING_CAPABILITIES_EXT = 1000274001
    ! Provided by VK_EXT_surface_maintenance1
    integer(c_int) :: SURFACE_PRESENT_MODE_COMPATIBILITY_EXT = 1000274002
    ! Provided by VK_EXT_swapchain_maintenance1
    integer(c_int) :: SWAPCHAIN_PRESENT_FENCE_INFO_EXT = 1000275001
    ! Provided by VK_EXT_swapchain_maintenance1
    integer(c_int) :: SWAPCHAIN_PRESENT_MODES_CREATE_INFO_EXT = 1000275002
    ! Provided by VK_EXT_swapchain_maintenance1
    integer(c_int) :: SWAPCHAIN_PRESENT_MODE_INFO_EXT = 1000275003
    ! Provided by VK_EXT_swapchain_maintenance1
    integer(c_int) :: SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_EXT = 1000275004
    ! Provided by VK_EXT_swapchain_maintenance1
    integer(c_int) :: RELEASE_SWAPCHAIN_IMAGES_INFO_EXT = 1000275005
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: GRAPHICS_SHADER_GROUP_CREATE_INFO_NV = 1000277001
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: GRAPHICS_PIPELINE_SHADER_GROUPS_CREATE_INFO_NV = 1000277002
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: INDIRECT_COMMANDS_LAYOUT_TOKEN_NV = 1000277003
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_NV = 1000277004
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: GENERATED_COMMANDS_INFO_NV = 1000277005
    ! Provided by VK_NV_device_generated_commands
    integer(c_int) :: GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_NV = 1000277006
    ! Provided by VK_NV_inherited_viewport_scissor
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_VIEWPORT_SCISSOR_INFO_NV = 1000278001
    ! Provided by VK_QCOM_render_pass_transform
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_RENDER_PASS_TRANSFORM_INFO_QCOM = 1000282000
    ! Provided by VK_QCOM_render_pass_transform
    integer(c_int) :: RENDER_PASS_TRANSFORM_BEGIN_INFO_QCOM = 1000282001
    ! Provided by VK_EXT_depth_bias_control
    integer(c_int) :: DEPTH_BIAS_INFO_EXT = 1000283001
    ! Provided by VK_EXT_depth_bias_control
    integer(c_int) :: DEPTH_BIAS_REPRESENTATION_INFO_EXT = 1000283002
    ! Provided by VK_EXT_custom_border_color
    integer(c_int) :: SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT = 1000287000
    ! Provided by VK_NV_present_barrier
    integer(c_int) :: SURFACE_CAPABILITIES_PRESENT_BARRIER_NV = 1000292001
    ! Provided by VK_NV_present_barrier
    integer(c_int) :: SWAPCHAIN_PRESENT_BARRIER_CREATE_INFO_NV = 1000292002
    ! Provided by VK_KHR_present_id
    integer(c_int) :: PRESENT_ID_KHR = 1000294000
    ! Provided by VK_KHR_video_encode_queue
    integer(c_int) :: QUERY_POOL_VIDEO_ENCODE_FEEDBACK_CREATE_INFO_KHR = 1000299005
    ! Provided by VK_NV_cuda_kernel_launch
    integer(c_int) :: CUDA_MODULE_CREATE_INFO_NV = 1000307000
    ! Provided by VK_NV_cuda_kernel_launch
    integer(c_int) :: CUDA_FUNCTION_CREATE_INFO_NV = 1000307001
    ! Provided by VK_NV_cuda_kernel_launch
    integer(c_int) :: CUDA_LAUNCH_INFO_NV = 1000307002
    ! Provided by VK_NV_low_latency
    integer(c_int) :: QUERY_LOW_LATENCY_SUPPORT_NV = 1000310000
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_OBJECT_CREATE_INFO_EXT = 1000311000
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_OBJECTS_INFO_EXT = 1000311001
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_DEVICE_INFO_EXT = 1000311002
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_COMMAND_QUEUE_INFO_EXT = 1000311003
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_BUFFER_INFO_EXT = 1000311004
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: IMPORT_METAL_BUFFER_INFO_EXT = 1000311005
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_TEXTURE_INFO_EXT = 1000311006
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: IMPORT_METAL_TEXTURE_INFO_EXT = 1000311007
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_IO_SURFACE_INFO_EXT = 1000311008
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: IMPORT_METAL_IO_SURFACE_INFO_EXT = 1000311009
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: EXPORT_METAL_SHARED_EVENT_INFO_EXT = 1000311010
    ! Provided by VK_EXT_metal_objects
    integer(c_int) :: IMPORT_METAL_SHARED_EVENT_INFO_EXT = 1000311011
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_ADDRESS_INFO_EXT = 1000316003
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_GET_INFO_EXT = 1000316004
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: BUFFER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316005
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: SAMPLER_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316008
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: OPAQUE_CAPTURE_DESCRIPTOR_DATA_CREATE_INFO_EXT = 1000316010
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_BUFFER_BINDING_INFO_EXT = 1000316011
    ! Provided by VK_EXT_descriptor_buffer
    integer(c_int) :: DESCRIPTOR_BUFFER_BINDING_PUSH_DESCRIPTOR_BUFFER_HANDLE_EXT = 1000316012
    ! Provided by VK_EXT_descriptor_buffer with VK_KHR_acceleration_structure or VK_NV_ray_tracing
    integer(c_int) :: ACCELERATION_STRUCTURE_CAPTURE_DESCRIPTOR_DATA_INFO_EXT = 1000316009
    ! Provided by VK_EXT_graphics_pipeline_library
    integer(c_int) :: GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT = 1000320002
    ! Provided by VK_NV_ray_tracing_motion_blur
    integer(c_int) :: ACCELERATION_STRUCTURE_GEOMETRY_MOTION_TRIANGLES_DATA_NV = 1000327000
    ! Provided by VK_NV_ray_tracing_motion_blur
    integer(c_int) :: ACCELERATION_STRUCTURE_MOTION_INFO_NV = 1000327002
    ! Provided by VK_QCOM_rotated_copy_commands
    integer(c_int) :: COPY_COMMAND_TRANSFORM_INFO_QCOM = 1000333000
    ! Provided by VK_EXT_directfb_surface
    integer(c_int) :: DIRECTFB_SURFACE_CREATE_INFO_EXT = 1000346000
    ! Provided by VK_EXT_shader_object VK_EXT_vertex_input_dynamic_state
    integer(c_int) :: VERTEX_INPUT_BINDING_DESCRIPTION_2_EXT = 1000352001
    ! Provided by VK_EXT_shader_object VK_EXT_vertex_input_dynamic_state
    integer(c_int) :: VERTEX_INPUT_ATTRIBUTE_DESCRIPTION_2_EXT = 1000352002
    ! Provided by VK_FUCHSIA_external_memory
    integer(c_int) :: IMPORT_MEMORY_ZIRCON_HANDLE_INFO_FUCHSIA = 1000364000
    ! Provided by VK_FUCHSIA_external_semaphore
    integer(c_int) :: IMPORT_SEMAPHORE_ZIRCON_HANDLE_INFO_FUCHSIA = 1000365000
    ! Provided by VK_FUCHSIA_external_semaphore
    integer(c_int) :: SEMAPHORE_GET_ZIRCON_HANDLE_INFO_FUCHSIA = 1000365001
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: BUFFER_COLLECTION_CREATE_INFO_FUCHSIA = 1000366000
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA = 1000366001
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA = 1000366002
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: BUFFER_COLLECTION_PROPERTIES_FUCHSIA = 1000366003
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: BUFFER_CONSTRAINTS_INFO_FUCHSIA = 1000366004
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA = 1000366005
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: SYSMEM_COLOR_SPACE_FUCHSIA = 1000366008
    ! Provided by VK_FUCHSIA_buffer_collection
    integer(c_int) :: BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA = 1000366009
    ! Provided by VK_HUAWEI_subpass_shading
    integer(c_int) :: SUBPASS_SHADING_PIPELINE_CREATE_INFO_HUAWEI = 1000369000
    ! Provided by VK_EXT_frame_boundary
    integer(c_int) :: FRAME_BOUNDARY_EXT = 1000375001
    ! Provided by VK_EXT_multisampled_render_to_single_sampled
    integer(c_int) :: SUBPASS_RESOLVE_PERFORMANCE_QUERY_EXT = 1000376001
    ! Provided by VK_EXT_multisampled_render_to_single_sampled
    integer(c_int) :: MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_INFO_EXT = 1000376002
    ! Provided by VK_QNX_screen_surface
    integer(c_int) :: SCREEN_SURFACE_CREATE_INFO_QNX = 1000378000
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: MICROMAP_BUILD_INFO_EXT = 1000396000
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: MICROMAP_VERSION_INFO_EXT = 1000396001
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: COPY_MICROMAP_INFO_EXT = 1000396002
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: COPY_MICROMAP_TO_MEMORY_INFO_EXT = 1000396003
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: COPY_MEMORY_TO_MICROMAP_INFO_EXT = 1000396004
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: MICROMAP_CREATE_INFO_EXT = 1000396007
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: MICROMAP_BUILD_SIZES_INFO_EXT = 1000396008
    ! Provided by VK_EXT_opacity_micromap
    integer(c_int) :: ACCELERATION_STRUCTURE_TRIANGLES_OPACITY_MICROMAP_EXT = 1000396009
    ! Provided by VK_NV_displacement_micromap
    integer(c_int) :: ACCELERATION_STRUCTURE_TRIANGLES_DISPLACEMENT_MICROMAP_NV = 1000397002
    ! Provided by VK_EXT_border_color_swizzle
    integer(c_int) :: SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT = 1000411001
    ! Provided by VK_VALVE_descriptor_set_host_mapping
    integer(c_int) :: DESCRIPTOR_SET_BINDING_REFERENCE_VALVE = 1000420001
    ! Provided by VK_VALVE_descriptor_set_host_mapping
    integer(c_int) :: DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE = 1000420002
    ! Provided by VK_ARM_render_pass_striped
    integer(c_int) :: RENDER_PASS_STRIPE_BEGIN_INFO_ARM = 1000424002
    ! Provided by VK_ARM_render_pass_striped
    integer(c_int) :: RENDER_PASS_STRIPE_INFO_ARM = 1000424003
    ! Provided by VK_ARM_render_pass_striped
    integer(c_int) :: RENDER_PASS_STRIPE_SUBMIT_INFO_ARM = 1000424004
    ! Provided by VK_QCOM_fragment_density_map_offset
    integer(c_int) :: SUBPASS_FRAGMENT_DENSITY_MAP_OFFSET_END_INFO_QCOM = 1000425002
    ! Provided by VK_NV_device_generated_commands_compute
    integer(c_int) :: COMPUTE_PIPELINE_INDIRECT_BUFFER_INFO_NV = 1000428001
    ! Provided by VK_EXT_external_memory_acquire_unmodified
    integer(c_int) :: EXTERNAL_MEMORY_ACQUIRE_UNMODIFIED_EXT = 1000453000
    ! Provided by VK_EXT_subpass_merge_feedback
    integer(c_int) :: RENDER_PASS_CREATION_CONTROL_EXT = 1000458001
    ! Provided by VK_EXT_subpass_merge_feedback
    integer(c_int) :: RENDER_PASS_CREATION_FEEDBACK_CREATE_INFO_EXT = 1000458002
    ! Provided by VK_EXT_subpass_merge_feedback
    integer(c_int) :: RENDER_PASS_SUBPASS_FEEDBACK_CREATE_INFO_EXT = 1000458003
    ! Provided by VK_LUNARG_direct_driver_loading
    integer(c_int) :: DIRECT_DRIVER_LOADING_INFO_LUNARG = 1000459000
    ! Provided by VK_LUNARG_direct_driver_loading
    integer(c_int) :: DIRECT_DRIVER_LOADING_LIST_LUNARG = 1000459001
    ! Provided by VK_EXT_shader_module_identifier
    integer(c_int) :: SHADER_MODULE_IDENTIFIER_EXT = 1000462003
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_IMAGE_FORMAT_INFO_NV = 1000464002
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_IMAGE_FORMAT_PROPERTIES_NV = 1000464003
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_SESSION_CREATE_INFO_NV = 1000464004
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_EXECUTE_INFO_NV = 1000464005
    ! Provided by VK_NV_optical_flow
    integer(c_int) :: OPTICAL_FLOW_SESSION_CREATE_PRIVATE_DATA_INFO_NV = 1000464010
    ! Provided by VK_ANDROID_external_format_resolve
    integer(c_int) :: ANDROID_HARDWARE_BUFFER_FORMAT_RESOLVE_PROPERTIES_ANDROID = 1000468002
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: RENDERING_AREA_INFO_KHR = 1000470003
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: SUBRESOURCE_LAYOUT_2_KHR = 1000338002
    ! Provided by VK_KHR_maintenance5
    integer(c_int) :: BUFFER_USAGE_FLAGS_2_CREATE_INFO_KHR = 1000470006
    ! Provided by VK_AMD_anti_lag
    integer(c_int) :: ANTI_LAG_DATA_AMD = 1000476001
    ! Provided by VK_AMD_anti_lag
    integer(c_int) :: ANTI_LAG_PRESENTATION_INFO_AMD = 1000476002
    ! Provided by VK_EXT_shader_object
    integer(c_int) :: SHADER_CREATE_INFO_EXT = 1000482002
    ! Provided by VK_KHR_pipeline_binary
    integer(c_int) :: RELEASE_CAPTURED_PIPELINE_DATA_INFO_KHR = 1000483005
    ! Provided by VK_QCOM_tile_properties
    integer(c_int) :: TILE_PROPERTIES_QCOM = 1000484001
    ! Provided by VK_SEC_amigo_profiling
    integer(c_int) :: AMIGO_PROFILING_SUBMIT_INFO_SEC = 1000485001
    ! Provided by VK_EXT_mutable_descriptor_type
    integer(c_int) :: MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT = 1000351002
    ! Provided by VK_EXT_layer_settings
    integer(c_int) :: LAYER_SETTINGS_CREATE_INFO_EXT = 1000496000
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: LATENCY_SLEEP_MODE_INFO_NV = 1000505000
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: LATENCY_SLEEP_INFO_NV = 1000505001
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: SET_LATENCY_MARKER_INFO_NV = 1000505002
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: GET_LATENCY_MARKER_INFO_NV = 1000505003
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: LATENCY_TIMINGS_FRAME_REPORT_NV = 1000505004
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: LATENCY_SUBMISSION_PRESENT_ID_NV = 1000505005
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: OUT_OF_BAND_QUEUE_TYPE_INFO_NV = 1000505006
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: SWAPCHAIN_LATENCY_CREATE_INFO_NV = 1000505007
    ! Provided by VK_NV_low_latency2
    integer(c_int) :: LATENCY_SURFACE_CAPABILITIES_NV = 1000505008
    ! Provided by VK_KHR_cooperative_matrix
    integer(c_int) :: COOPERATIVE_MATRIX_PROPERTIES_KHR = 1000506001
    ! Provided by VK_QCOM_multiview_per_view_render_areas
    integer(c_int) :: MULTIVIEW_PER_VIEW_RENDER_AREAS_RENDER_PASS_BEGIN_INFO_QCOM = 1000510001
    ! Provided by VK_QCOM_image_processing2
    integer(c_int) :: SAMPLER_BLOCK_MATCH_WINDOW_CREATE_INFO_QCOM = 1000518002
    ! Provided by VK_QCOM_filter_cubic_weights
    integer(c_int) :: SAMPLER_CUBIC_WEIGHTS_CREATE_INFO_QCOM = 1000519000
    ! Provided by VK_QCOM_filter_cubic_weights
    integer(c_int) :: BLIT_IMAGE_CUBIC_WEIGHTS_INFO_QCOM = 1000519002
    ! Provided by VK_QCOM_ycbcr_degamma
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_YCBCR_DEGAMMA_CREATE_INFO_QCOM = 1000520001
    ! Provided by VK_QNX_external_memory_screen_buffer
    integer(c_int) :: SCREEN_BUFFER_PROPERTIES_QNX = 1000529000
    ! Provided by VK_QNX_external_memory_screen_buffer
    integer(c_int) :: SCREEN_BUFFER_FORMAT_PROPERTIES_QNX = 1000529001
    ! Provided by VK_QNX_external_memory_screen_buffer
    integer(c_int) :: IMPORT_SCREEN_BUFFER_INFO_QNX = 1000529002
    ! Provided by VK_QNX_external_memory_screen_buffer
    integer(c_int) :: EXTERNAL_FORMAT_QNX = 1000529003
    ! Provided by VK_KHR_calibrated_timestamps
    integer(c_int) :: CALIBRATED_TIMESTAMP_INFO_KHR = 1000184000
    ! Provided by VK_KHR_maintenance6
    integer(c_int) :: BIND_MEMORY_STATUS_KHR = 1000545002
    ! Provided by VK_KHR_maintenance6
    integer(c_int) :: BIND_DESCRIPTOR_SETS_INFO_KHR = 1000545003
    ! Provided by VK_KHR_maintenance6
    integer(c_int) :: PUSH_CONSTANTS_INFO_KHR = 1000545004
    ! Provided by VK_KHR_maintenance6 with VK_KHR_push_descriptor
    integer(c_int) :: PUSH_DESCRIPTOR_SET_INFO_KHR = 1000545005
    ! Provided by VK_KHR_maintenance6 with VK_KHR_push_descriptor
    integer(c_int) :: PUSH_DESCRIPTOR_SET_WITH_TEMPLATE_INFO_KHR = 1000545006
    ! Provided by VK_KHR_maintenance6 with VK_EXT_descriptor_buffer
    integer(c_int) :: SET_DESCRIPTOR_BUFFER_OFFSETS_INFO_EXT = 1000545007
    ! Provided by VK_KHR_maintenance6 with VK_EXT_descriptor_buffer
    integer(c_int) :: BIND_DESCRIPTOR_BUFFER_EMBEDDED_SAMPLERS_INFO_EXT = 1000545008
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: GENERATED_COMMANDS_MEMORY_REQUIREMENTS_INFO_EXT = 1000572002
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: INDIRECT_EXECUTION_SET_CREATE_INFO_EXT = 1000572003
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: GENERATED_COMMANDS_INFO_EXT = 1000572004
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: INDIRECT_COMMANDS_LAYOUT_CREATE_INFO_EXT = 1000572006
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: INDIRECT_COMMANDS_LAYOUT_TOKEN_EXT = 1000572007
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: WRITE_INDIRECT_EXECUTION_SET_PIPELINE_EXT = 1000572008
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: WRITE_INDIRECT_EXECUTION_SET_SHADER_EXT = 1000572009
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: INDIRECT_EXECUTION_SET_PIPELINE_INFO_EXT = 1000572010
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: INDIRECT_EXECUTION_SET_SHADER_INFO_EXT = 1000572011
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: INDIRECT_EXECUTION_SET_SHADER_LAYOUT_INFO_EXT = 1000572012
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: GENERATED_COMMANDS_PIPELINE_INFO_EXT = 1000572013
    ! Provided by VK_EXT_device_generated_commands
    integer(c_int) :: GENERATED_COMMANDS_SHADER_INFO_EXT = 1000572014
    ! Provided by VK_NV_cooperative_matrix2
    integer(c_int) :: COOPERATIVE_MATRIX_FLEXIBLE_DIMENSIONS_PROPERTIES_NV = 1000593001
    ! Provided by VK_EXT_debug_report
    ! DEBUG_REPORT_CREATE_INFO_EXT is a deprecated alias
    integer(c_int) :: DEBUG_REPORT_CREATE_INFO_EXT = 1000011000
    ! Provided by VK_KHR_dynamic_rendering
    integer(c_int) :: RENDERING_INFO_KHR = 1000044000
    ! Provided by VK_KHR_dynamic_rendering
    integer(c_int) :: RENDERING_ATTACHMENT_INFO_KHR = 1000044001
    ! Provided by VK_KHR_dynamic_rendering
    integer(c_int) :: COMMAND_BUFFER_INHERITANCE_RENDERING_INFO_KHR = 1000044004
    ! Provided by VK_KHR_multiview
    integer(c_int) :: RENDER_PASS_MULTIVIEW_CREATE_INFO_KHR = 1000053000
    ! Provided by VK_KHR_get_physical_device_properties2
    integer(c_int) :: FORMAT_PROPERTIES_2_KHR = 1000059002
    ! Provided by VK_KHR_get_physical_device_properties2
    integer(c_int) :: QUEUE_FAMILY_PROPERTIES_2_KHR = 1000059005
    ! Provided by VK_KHR_get_physical_device_properties2
    integer(c_int) :: SPARSE_IMAGE_FORMAT_PROPERTIES_2_KHR = 1000059007
    ! Provided by VK_KHR_bind_memory2 with VK_KHR_device_group
    integer(c_int) :: BIND_BUFFER_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060013
    ! Provided by VK_KHR_bind_memory2 with VK_KHR_device_group
    integer(c_int) :: BIND_IMAGE_MEMORY_DEVICE_GROUP_INFO_KHR = 1000060014
    ! Provided by VK_KHR_external_memory_capabilities
    integer(c_int) :: EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR = 1000071001
    ! Provided by VK_KHR_external_memory_capabilities
    integer(c_int) :: EXTERNAL_BUFFER_PROPERTIES_KHR = 1000071003
    ! Provided by VK_KHR_external_memory
    integer(c_int) :: EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR = 1000072000
    ! Provided by VK_KHR_external_memory
    integer(c_int) :: EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR = 1000072001
    ! Provided by VK_KHR_external_memory
    integer(c_int) :: EXPORT_MEMORY_ALLOCATE_INFO_KHR = 1000072002
    ! Provided by VK_KHR_external_semaphore_capabilities
    integer(c_int) :: EXTERNAL_SEMAPHORE_PROPERTIES_KHR = 1000076001
    ! Provided by VK_KHR_external_semaphore
    integer(c_int) :: EXPORT_SEMAPHORE_CREATE_INFO_KHR = 1000077000
    ! Provided by VK_KHR_descriptor_update_template
    integer(c_int) :: DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR = 1000085000
    ! Provided by VK_EXT_display_surface_counter
    ! SURFACE_CAPABILITIES2_EXT is a deprecated alias
    integer(c_int) :: SURFACE_CAPABILITIES2_EXT = 1000090000
    ! Provided by VK_KHR_imageless_framebuffer
    integer(c_int) :: FRAMEBUFFER_ATTACHMENTS_CREATE_INFO_KHR = 1000108001
    ! Provided by VK_KHR_imageless_framebuffer
    integer(c_int) :: FRAMEBUFFER_ATTACHMENT_IMAGE_INFO_KHR = 1000108002
    ! Provided by VK_KHR_imageless_framebuffer
    integer(c_int) :: RENDER_PASS_ATTACHMENT_BEGIN_INFO_KHR = 1000108003
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: ATTACHMENT_DESCRIPTION_2_KHR = 1000109000
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: ATTACHMENT_REFERENCE_2_KHR = 1000109001
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: SUBPASS_DESCRIPTION_2_KHR = 1000109002
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: SUBPASS_DEPENDENCY_2_KHR = 1000109003
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: RENDER_PASS_CREATE_INFO_2_KHR = 1000109004
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: SUBPASS_BEGIN_INFO_KHR = 1000109005
    ! Provided by VK_KHR_create_renderpass2
    integer(c_int) :: SUBPASS_END_INFO_KHR = 1000109006
    ! Provided by VK_KHR_external_fence_capabilities
    integer(c_int) :: EXTERNAL_FENCE_PROPERTIES_KHR = 1000112001
    ! Provided by VK_KHR_external_fence
    integer(c_int) :: EXPORT_FENCE_CREATE_INFO_KHR = 1000113000
    ! Provided by VK_KHR_maintenance2
    integer(c_int) :: RENDER_PASS_INPUT_ATTACHMENT_ASPECT_CREATE_INFO_KHR = 1000117001
    ! Provided by VK_EXT_sampler_filter_minmax
    integer(c_int) :: SAMPLER_REDUCTION_MODE_CREATE_INFO_EXT = 1000130001
    ! Provided by VK_EXT_inline_uniform_block
    integer(c_int) :: WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT = 1000138002
    ! Provided by VK_EXT_inline_uniform_block
    integer(c_int) :: DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT = 1000138003
    ! Provided by VK_KHR_get_memory_requirements2
    integer(c_int) :: BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR = 1000146000
    ! Provided by VK_KHR_get_memory_requirements2
    integer(c_int) :: SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR = 1000146004
    ! Provided by VK_NV_framebuffer_mixed_samples with VK_VERSION_1_3 or VK_KHR_dynamic_rendering
    integer(c_int) :: ATTACHMENT_SAMPLE_COUNT_INFO_NV = 1000044008
    ! Provided by VK_KHR_sampler_ycbcr_conversion
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_CREATE_INFO_KHR = 1000156000
    ! Provided by VK_KHR_sampler_ycbcr_conversion
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_INFO_KHR = 1000156001
    ! Provided by VK_KHR_sampler_ycbcr_conversion
    integer(c_int) :: BIND_IMAGE_PLANE_MEMORY_INFO_KHR = 1000156002
    ! Provided by VK_KHR_sampler_ycbcr_conversion
    integer(c_int) :: SAMPLER_YCBCR_CONVERSION_IMAGE_FORMAT_PROPERTIES_KHR = 1000156005
    ! Provided by VK_KHR_bind_memory2
    integer(c_int) :: BIND_BUFFER_MEMORY_INFO_KHR = 1000157000
    ! Provided by VK_KHR_bind_memory2
    integer(c_int) :: BIND_IMAGE_MEMORY_INFO_KHR = 1000157001
    ! Provided by VK_EXT_descriptor_indexing
    integer(c_int) :: DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT = 1000161000
    ! Provided by VK_EXT_descriptor_indexing
    integer(c_int) :: DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT = 1000161003
    ! Provided by VK_EXT_descriptor_indexing
    integer(c_int) :: DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT = 1000161004
    ! Provided by VK_KHR_maintenance3
    integer(c_int) :: DESCRIPTOR_SET_LAYOUT_SUPPORT_KHR = 1000168001
    ! Provided by VK_EXT_calibrated_timestamps
    integer(c_int) :: CALIBRATED_TIMESTAMP_INFO_EXT = 1000184000
    ! Provided by VK_KHR_depth_stencil_resolve
    integer(c_int) :: SUBPASS_DESCRIPTION_DEPTH_STENCIL_RESOLVE_KHR = 1000199001
    ! Provided by VK_KHR_timeline_semaphore
    integer(c_int) :: SEMAPHORE_TYPE_CREATE_INFO_KHR = 1000207002
    ! Provided by VK_KHR_timeline_semaphore
    integer(c_int) :: TIMELINE_SEMAPHORE_SUBMIT_INFO_KHR = 1000207003
    ! Provided by VK_KHR_timeline_semaphore
    integer(c_int) :: SEMAPHORE_WAIT_INFO_KHR = 1000207004
    ! Provided by VK_KHR_timeline_semaphore
    integer(c_int) :: SEMAPHORE_SIGNAL_INFO_KHR = 1000207005
    ! Provided by VK_INTEL_performance_query
    ! QUERY_POOL_CREATE_INFO_INTEL is a deprecated alias
    integer(c_int) :: QUERY_POOL_CREATE_INFO_INTEL = 1000210000
    ! Provided by VK_KHR_separate_depth_stencil_layouts
    integer(c_int) :: ATTACHMENT_REFERENCE_STENCIL_LAYOUT_KHR = 1000241001
    ! Provided by VK_KHR_separate_depth_stencil_layouts
    integer(c_int) :: ATTACHMENT_DESCRIPTION_STENCIL_LAYOUT_KHR = 1000241002
    ! Provided by VK_EXT_buffer_device_address
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_INFO_EXT = 1000244001
    ! Provided by VK_KHR_buffer_device_address
    integer(c_int) :: BUFFER_DEVICE_ADDRESS_INFO_KHR = 1000244001
    ! Provided by VK_KHR_buffer_device_address
    integer(c_int) :: BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR = 1000257002
    ! Provided by VK_EXT_private_data
    integer(c_int) :: PRIVATE_DATA_SLOT_CREATE_INFO_EXT = 1000295002
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: BUFFER_MEMORY_BARRIER_2_KHR = 1000314001
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: DEPENDENCY_INFO_KHR = 1000314003
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: SUBMIT_INFO_2_KHR = 1000314004
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: SEMAPHORE_SUBMIT_INFO_KHR = 1000314005
    ! Provided by VK_KHR_synchronization2
    integer(c_int) :: COMMAND_BUFFER_SUBMIT_INFO_KHR = 1000314006
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: COPY_BUFFER_INFO_2_KHR = 1000337000
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: COPY_IMAGE_INFO_2_KHR = 1000337001
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: COPY_BUFFER_TO_IMAGE_INFO_2_KHR = 1000337002
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: COPY_IMAGE_TO_BUFFER_INFO_2_KHR = 1000337003
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: BLIT_IMAGE_INFO_2_KHR = 1000337004
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: RESOLVE_IMAGE_INFO_2_KHR = 1000337005
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: BUFFER_COPY_2_KHR = 1000337006
    ! Provided by VK_KHR_copy_commands2
    integer(c_int) :: BUFFER_IMAGE_COPY_2_KHR = 1000337009
    ! Provided by VK_EXT_image_compression_control
    integer(c_int) :: SUBRESOURCE_LAYOUT_2_EXT = 1000338002
    ! Provided by VK_VALVE_mutable_descriptor_type
    integer(c_int) :: MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_VALVE = 1000351002
    ! Provided by VK_KHR_format_feature_flags2
    integer(c_int) :: FORMAT_PROPERTIES_3_KHR = 1000360000
    ! Provided by VK_EXT_global_priority_query
    integer(c_int) :: QUEUE_FAMILY_GLOBAL_PRIORITY_PROPERTIES_EXT = 1000388001
    ! Provided by VK_EXT_shader_object
    integer(c_int) :: SHADER_REQUIRED_SUBGROUP_SIZE_CREATE_INFO_EXT = 1000225001
  end type t_vk_structure_type


  type(t_vk_structure_type), parameter, public :: VK_STRUCTURE_TYPE = t_vk_structure_type()


  !? VkInstanceCreateFlagBits. ==========================================================================


  integer(c_int), parameter, public :: VK_INSTANCE_CREATE_ENUMERATE_PORTABILITY_BIT_KHR = int(z"00000001")


  !? VK EXTENSION NAMES. ==========================================================================


  character(len = 15, kind = c_char), parameter :: VK_KHR_SURFACE_EXTENSION_NAME = "VK_KHR_surface"//achar(0)
  character(len = 17, kind = c_char), parameter :: VK_KHR_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_swapchain"//achar(0)
  character(len = 15, kind = c_char), parameter :: VK_KHR_DISPLAY_EXTENSION_NAME = "VK_KHR_display"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_DISPLAY_SWAPCHAIN_EXTENSION_NAME = "VK_KHR_display_swapchain"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_SAMPLER_MIRROR_CLAMP_TO_EDGE_EXTENSION_NAME = "VK_KHR_sampler_mirror_clamp_to_edge"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_KHR_VIDEO_QUEUE_EXTENSION_NAME = "VK_KHR_video_queue"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_VIDEO_DECODE_QUEUE_EXTENSION_NAME = "VK_KHR_video_decode_queue"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_VIDEO_ENCODE_H264_EXTENSION_NAME = "VK_KHR_video_encode_h264"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_VIDEO_ENCODE_H265_EXTENSION_NAME = "VK_KHR_video_encode_h265"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_VIDEO_DECODE_H264_EXTENSION_NAME = "VK_KHR_video_decode_h264"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_DYNAMIC_RENDERING_EXTENSION_NAME = "VK_KHR_dynamic_rendering"//achar(0)
  character(len = 17, kind = c_char), parameter :: VK_KHR_MULTIVIEW_EXTENSION_NAME = "VK_KHR_multiview"//achar(0)
  character(len = 39, kind = c_char), parameter :: VK_KHR_GET_PHYSICAL_DEVICE_PROPERTIES_2_EXTENSION_NAME = "VK_KHR_get_physical_device_properties2"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_DEVICE_GROUP_EXTENSION_NAME = "VK_KHR_device_group"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_KHR_SHADER_DRAW_PARAMETERS_EXTENSION_NAME = "VK_KHR_shader_draw_parameters"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_1_EXTENSION_NAME = "VK_KHR_maintenance1"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_MAINTENANCE1_EXTENSION_NAME = VK_KHR_MAINTENANCE_1_EXTENSION_NAME//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME = "VK_KHR_device_group_creation"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_memory_capabilities"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME = "VK_KHR_external_memory"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME = "VK_KHR_external_memory_fd"//achar(0)
  character(len = 39, kind = c_char), parameter :: VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_semaphore_capabilities"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME = "VK_KHR_external_semaphore"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME = "VK_KHR_external_semaphore_fd"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME = "VK_KHR_push_descriptor"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME = "VK_KHR_shader_float16_int8"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_KHR_16BIT_STORAGE_EXTENSION_NAME = "VK_KHR_16bit_storage"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_KHR_INCREMENTAL_PRESENT_EXTENSION_NAME = "VK_KHR_incremental_present"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME = "VK_KHR_descriptor_update_template"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_IMAGELESS_FRAMEBUFFER_EXTENSION_NAME = "VK_KHR_imageless_framebuffer"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_CREATE_RENDERPASS_2_EXTENSION_NAME = "VK_KHR_create_renderpass2"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME = "VK_KHR_shared_presentable_image"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME = "VK_KHR_external_fence_capabilities"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME = "VK_KHR_external_fence"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME = "VK_KHR_external_fence_fd"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME = "VK_KHR_performance_query"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_2_EXTENSION_NAME = "VK_KHR_maintenance2"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_MAINTENANCE2_EXTENSION_NAME = VK_KHR_MAINTENANCE_2_EXTENSION_NAME//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME = "VK_KHR_get_surface_capabilities2"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME = "VK_KHR_variable_pointers"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME = "VK_KHR_get_display_properties2"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME = "VK_KHR_dedicated_allocation"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_STORAGE_BUFFER_STORAGE_CLASS_EXTENSION_NAME = "VK_KHR_storage_buffer_storage_class"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_KHR_RELAXED_BLOCK_LAYOUT_EXTENSION_NAME = "VK_KHR_relaxed_block_layout"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME = "VK_KHR_get_memory_requirements2"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_IMAGE_FORMAT_LIST_EXTENSION_NAME = "VK_KHR_image_format_list"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_SAMPLER_YCBCR_CONVERSION_EXTENSION_NAME = "VK_KHR_sampler_ycbcr_conversion"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_BIND_MEMORY_2_EXTENSION_NAME = "VK_KHR_bind_memory2"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_3_EXTENSION_NAME = "VK_KHR_maintenance3"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_MAINTENANCE3_EXTENSION_NAME = VK_KHR_MAINTENANCE_3_EXTENSION_NAME//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_KHR_DRAW_INDIRECT_COUNT_EXTENSION_NAME = "VK_KHR_draw_indirect_count"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_KHR_SHADER_SUBGROUP_EXTENDED_TYPES_EXTENSION_NAME = "VK_KHR_shader_subgroup_extended_types"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_8BIT_STORAGE_EXTENSION_NAME = "VK_KHR_8bit_storage"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME = "VK_KHR_shader_atomic_int64"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_SHADER_CLOCK_EXTENSION_NAME = "VK_KHR_shader_clock"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_VIDEO_DECODE_H265_EXTENSION_NAME = "VK_KHR_video_decode_h265"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_KHR_GLOBAL_PRIORITY_EXTENSION_NAME = "VK_KHR_global_priority"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_KHR_DRIVER_PROPERTIES_EXTENSION_NAME = "VK_KHR_driver_properties"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_SHADER_FLOAT_CONTROLS_EXTENSION_NAME = "VK_KHR_shader_float_controls"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_DEPTH_STENCIL_RESOLVE_EXTENSION_NAME = "VK_KHR_depth_stencil_resolve"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_SWAPCHAIN_MUTABLE_FORMAT_EXTENSION_NAME = "VK_KHR_swapchain_mutable_format"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_TIMELINE_SEMAPHORE_EXTENSION_NAME = "VK_KHR_timeline_semaphore"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME = "VK_KHR_vulkan_memory_model"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_KHR_SHADER_TERMINATE_INVOCATION_EXTENSION_NAME = "VK_KHR_shader_terminate_invocation"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_FRAGMENT_SHADING_RATE_EXTENSION_NAME = "VK_KHR_fragment_shading_rate"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_DYNAMIC_RENDERING_LOCAL_READ_EXTENSION_NAME = "VK_KHR_dynamic_rendering_local_read"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_KHR_SHADER_QUAD_CONTROL_EXTENSION_NAME = "VK_KHR_shader_quad_control"//achar(0)
  character(len = 17, kind = c_char), parameter :: VK_KHR_SPIRV_1_4_EXTENSION_NAME = "VK_KHR_spirv_1_4"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_KHR_SURFACE_PROTECTED_CAPABILITIES_EXTENSION_NAME = "VK_KHR_surface_protected_capabilities"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_KHR_SEPARATE_DEPTH_STENCIL_LAYOUTS_EXTENSION_NAME = "VK_KHR_separate_depth_stencil_layouts"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_PRESENT_WAIT_EXTENSION_NAME = "VK_KHR_present_wait"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_KHR_UNIFORM_BUFFER_STANDARD_LAYOUT_EXTENSION_NAME = "VK_KHR_uniform_buffer_standard_layout"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = "VK_KHR_buffer_device_address"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_DEFERRED_HOST_OPERATIONS_EXTENSION_NAME = "VK_KHR_deferred_host_operations"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME = "VK_KHR_pipeline_executable_properties"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_KHR_MAP_MEMORY_2_EXTENSION_NAME = "VK_KHR_map_memory2"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_KHR_SHADER_INTEGER_DOT_PRODUCT_EXTENSION_NAME = "VK_KHR_shader_integer_dot_product"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME = "VK_KHR_pipeline_library"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_SHADER_NON_SEMANTIC_INFO_EXTENSION_NAME = "VK_KHR_shader_non_semantic_info"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_KHR_PRESENT_ID_EXTENSION_NAME = "VK_KHR_present_id"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_VIDEO_ENCODE_QUEUE_EXTENSION_NAME = "VK_KHR_video_encode_queue"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_KHR_SYNCHRONIZATION_2_EXTENSION_NAME = "VK_KHR_synchronization2"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_KHR_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME = "VK_KHR_fragment_shader_barycentric"//achar(0)
  character(len = 44, kind = c_char), parameter :: VK_KHR_SHADER_SUBGROUP_UNIFORM_CONTROL_FLOW_EXTENSION_NAME = "VK_KHR_shader_subgroup_uniform_control_flow"//achar(0)
  character(len = 40, kind = c_char), parameter :: VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_EXTENSION_NAME = "VK_KHR_zero_initialize_workgroup_memory"//achar(0)
  character(len = 40, kind = c_char), parameter :: VK_KHR_WORKGROUP_MEMORY_EXPLICIT_LAYOUT_EXTENSION_NAME = "VK_KHR_workgroup_memory_explicit_layout"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_KHR_COPY_COMMANDS_2_EXTENSION_NAME = "VK_KHR_copy_commands2"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_FORMAT_FEATURE_FLAGS_2_EXTENSION_NAME = "VK_KHR_format_feature_flags2"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_RAY_TRACING_MAINTENANCE_1_EXTENSION_NAME = "VK_KHR_ray_tracing_maintenance1"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_KHR_PORTABILITY_ENUMERATION_EXTENSION_NAME = "VK_KHR_portability_enumeration"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_4_EXTENSION_NAME = "VK_KHR_maintenance4"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_KHR_SHADER_SUBGROUP_ROTATE_EXTENSION_NAME = "VK_KHR_shader_subgroup_rotate"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_KHR_SHADER_MAXIMAL_RECONVERGENCE_EXTENSION_NAME = "VK_KHR_shader_maximal_reconvergence"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_5_EXTENSION_NAME = "VK_KHR_maintenance5"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_KHR_RAY_TRACING_POSITION_FETCH_EXTENSION_NAME = "VK_KHR_ray_tracing_position_fetch"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_KHR_PIPELINE_BINARY_EXTENSION_NAME = "VK_KHR_pipeline_binary"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_COOPERATIVE_MATRIX_EXTENSION_NAME = "VK_KHR_cooperative_matrix"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_KHR_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME = "VK_KHR_compute_shader_derivatives"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_KHR_VIDEO_DECODE_AV1_EXTENSION_NAME = "VK_KHR_video_decode_av1"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_VIDEO_MAINTENANCE_1_EXTENSION_NAME = "VK_KHR_video_maintenance1"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_KHR_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME = "VK_KHR_vertex_attribute_divisor"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_LOAD_STORE_OP_NONE_EXTENSION_NAME = "VK_KHR_load_store_op_none"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_KHR_SHADER_FLOAT_CONTROLS_2_EXTENSION_NAME = "VK_KHR_shader_float_controls2"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_KHR_INDEX_TYPE_UINT8_EXTENSION_NAME = "VK_KHR_index_type_uint8"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_KHR_LINE_RASTERIZATION_EXTENSION_NAME = "VK_KHR_line_rasterization"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_KHR_CALIBRATED_TIMESTAMPS_EXTENSION_NAME = "VK_KHR_calibrated_timestamps"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_KHR_SHADER_EXPECT_ASSUME_EXTENSION_NAME = "VK_KHR_shader_expect_assume"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_6_EXTENSION_NAME = "VK_KHR_maintenance6"//achar(0)
  character(len = 43, kind = c_char), parameter :: VK_KHR_SHADER_RELAXED_EXTENDED_INSTRUCTION_EXTENSION_NAME = "VK_KHR_shader_relaxed_extended_instruction"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_KHR_MAINTENANCE_7_EXTENSION_NAME = "VK_KHR_maintenance7"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_DEBUG_REPORT_EXTENSION_NAME = "VK_EXT_debug_report"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_NV_GLSL_SHADER_EXTENSION_NAME = "VK_NV_glsl_shader"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_EXT_DEPTH_RANGE_UNRESTRICTED_EXTENSION_NAME = "VK_EXT_depth_range_unrestricted"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_IMG_FILTER_CUBIC_EXTENSION_NAME = "VK_IMG_filter_cubic"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_AMD_RASTERIZATION_ORDER_EXTENSION_NAME = "VK_AMD_rasterization_order"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_AMD_SHADER_TRINARY_MINMAX_EXTENSION_NAME = "VK_AMD_shader_trinary_minmax"//achar(0)
  character(len = 40, kind = c_char), parameter :: VK_AMD_SHADER_EXPLICIT_VERTEX_PARAMETER_EXTENSION_NAME = "VK_AMD_shader_explicit_vertex_parameter"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_DEBUG_MARKER_EXTENSION_NAME = "VK_EXT_debug_marker"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_AMD_GCN_SHADER_EXTENSION_NAME = "VK_AMD_gcn_shader"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME = "VK_NV_dedicated_allocation"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_TRANSFORM_FEEDBACK_EXTENSION_NAME = "VK_EXT_transform_feedback"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_NVX_BINARY_IMPORT_EXTENSION_NAME = "VK_NVX_binary_import"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_NVX_IMAGE_VIEW_HANDLE_EXTENSION_NAME = "VK_NVX_image_view_handle"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_AMD_DRAW_INDIRECT_COUNT_EXTENSION_NAME = "VK_AMD_draw_indirect_count"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_AMD_NEGATIVE_VIEWPORT_HEIGHT_EXTENSION_NAME = "VK_AMD_negative_viewport_height"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME = "VK_AMD_gpu_shader_half_float"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_AMD_SHADER_BALLOT_EXTENSION_NAME = "VK_AMD_shader_ballot"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME = "VK_AMD_texture_gather_bias_lod"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_AMD_SHADER_INFO_EXTENSION_NAME = "VK_AMD_shader_info"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_AMD_SHADER_IMAGE_LOAD_STORE_LOD_EXTENSION_NAME = "VK_AMD_shader_image_load_store_lod"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME = "VK_NV_corner_sampled_image"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_IMG_FORMAT_PVRTC_EXTENSION_NAME = "VK_IMG_format_pvrtc"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = "VK_NV_external_memory_capabilities"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME = "VK_NV_external_memory"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_VALIDATION_FLAGS_EXTENSION_NAME = "VK_EXT_validation_flags"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_EXT_SHADER_SUBGROUP_BALLOT_EXTENSION_NAME = "VK_EXT_shader_subgroup_ballot"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_SHADER_SUBGROUP_VOTE_EXTENSION_NAME = "VK_EXT_shader_subgroup_vote"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME = "VK_EXT_texture_compression_astc_hdr"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_ASTC_DECODE_MODE_EXTENSION_NAME = "VK_EXT_astc_decode_mode"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_PIPELINE_ROBUSTNESS_EXTENSION_NAME = "VK_EXT_pipeline_robustness"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_CONDITIONAL_RENDERING_EXTENSION_NAME = "VK_EXT_conditional_rendering"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_NV_CLIP_SPACE_W_SCALING_EXTENSION_NAME = "VK_NV_clip_space_w_scaling"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_DIRECT_MODE_DISPLAY_EXTENSION_NAME = "VK_EXT_direct_mode_display"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_EXT_DISPLAY_SURFACE_COUNTER_EXTENSION_NAME = "VK_EXT_display_surface_counter"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME = "VK_EXT_display_control"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_GOOGLE_DISPLAY_TIMING_EXTENSION_NAME = "VK_GOOGLE_display_timing"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME = "VK_NV_sample_mask_override_coverage"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME = "VK_NV_geometry_shader_passthrough"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME = "VK_NV_viewport_array2"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_NV_VIEWPORT_ARRAY2_EXTENSION_NAME = VK_NV_VIEWPORT_ARRAY_2_EXTENSION_NAME//achar(0)
  character(len = 37, kind = c_char), parameter :: VK_NVX_MULTIVIEW_PER_VIEW_ATTRIBUTES_EXTENSION_NAME = "VK_NVX_multiview_per_view_attributes"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME = "VK_NV_viewport_swizzle"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_DISCARD_RECTANGLES_EXTENSION_NAME = "VK_EXT_discard_rectangles"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_EXT_CONSERVATIVE_RASTERIZATION_EXTENSION_NAME = "VK_EXT_conservative_rasterization"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_EXT_DEPTH_CLIP_ENABLE_EXTENSION_NAME = "VK_EXT_depth_clip_enable"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_SWAPCHAIN_COLOR_SPACE_EXTENSION_NAME = "VK_EXT_swapchain_colorspace"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_HDR_METADATA_EXTENSION_NAME = "VK_EXT_hdr_metadata"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_IMG_RELAXED_LINE_RASTERIZATION_EXTENSION_NAME = "VK_IMG_relaxed_line_rasterization"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_EXT_EXTERNAL_MEMORY_DMA_BUF_EXTENSION_NAME = "VK_EXT_external_memory_dma_buf"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_QUEUE_FAMILY_FOREIGN_EXTENSION_NAME = "VK_EXT_queue_family_foreign"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_EXT_DEBUG_UTILS_EXTENSION_NAME = "VK_EXT_debug_utils"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_SAMPLER_FILTER_MINMAX_EXTENSION_NAME = "VK_EXT_sampler_filter_minmax"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME = "VK_AMD_gpu_shader_int16"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_AMD_MIXED_ATTACHMENT_SAMPLES_EXTENSION_NAME = "VK_AMD_mixed_attachment_samples"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_AMD_SHADER_FRAGMENT_MASK_EXTENSION_NAME = "VK_AMD_shader_fragment_mask"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME = "VK_EXT_inline_uniform_block"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME = "VK_EXT_shader_stencil_export"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_SAMPLE_LOCATIONS_EXTENSION_NAME = "VK_EXT_sample_locations"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_EXT_BLEND_OPERATION_ADVANCED_EXTENSION_NAME = "VK_EXT_blend_operation_advanced"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME = "VK_NV_fragment_coverage_to_color"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME = "VK_NV_framebuffer_mixed_samples"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_NV_FILL_RECTANGLE_EXTENSION_NAME = "VK_NV_fill_rectangle"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_NV_SHADER_SM_BUILTINS_EXTENSION_NAME = "VK_NV_shader_sm_builtins"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_POST_DEPTH_COVERAGE_EXTENSION_NAME = "VK_EXT_post_depth_coverage"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_IMAGE_DRM_FORMAT_MODIFIER_EXTENSION_NAME = "VK_EXT_image_drm_format_modifier"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_VALIDATION_CACHE_EXTENSION_NAME = "VK_EXT_validation_cache"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME = "VK_EXT_descriptor_indexing"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_EXT_SHADER_VIEWPORT_INDEX_LAYER_EXTENSION_NAME = "VK_EXT_shader_viewport_index_layer"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_NV_SHADING_RATE_IMAGE_EXTENSION_NAME = "VK_NV_shading_rate_image"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_NV_RAY_TRACING_EXTENSION_NAME = "VK_NV_ray_tracing"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_NV_REPRESENTATIVE_FRAGMENT_TEST_EXTENSION_NAME = "VK_NV_representative_fragment_test"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_FILTER_CUBIC_EXTENSION_NAME = "VK_EXT_filter_cubic"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_QCOM_RENDER_PASS_SHADER_RESOLVE_EXTENSION_NAME = "VK_QCOM_render_pass_shader_resolve"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_EXT_GLOBAL_PRIORITY_EXTENSION_NAME = "VK_EXT_global_priority"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME = "VK_EXT_external_memory_host"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_AMD_BUFFER_MARKER_EXTENSION_NAME = "VK_AMD_buffer_marker"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_AMD_PIPELINE_COMPILER_CONTROL_EXTENSION_NAME = "VK_AMD_pipeline_compiler_control"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_CALIBRATED_TIMESTAMPS_EXTENSION_NAME = "VK_EXT_calibrated_timestamps"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_AMD_SHADER_CORE_PROPERTIES_EXTENSION_NAME = "VK_AMD_shader_core_properties"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME = "VK_AMD_memory_overallocation_behavior"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME = "VK_EXT_vertex_attribute_divisor"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_EXT_PIPELINE_CREATION_FEEDBACK_EXTENSION_NAME = "VK_EXT_pipeline_creation_feedback"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_NV_SHADER_SUBGROUP_PARTITIONED_EXTENSION_NAME = "VK_NV_shader_subgroup_partitioned"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME = "VK_NV_compute_shader_derivatives"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_NV_MESH_SHADER_EXTENSION_NAME = "VK_NV_mesh_shader"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME = "VK_NV_fragment_shader_barycentric"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME = "VK_NV_shader_image_footprint"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_NV_SCISSOR_EXCLUSIVE_EXTENSION_NAME = "VK_NV_scissor_exclusive"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_NV_DEVICE_DIAGNOSTIC_CHECKPOINTS_EXTENSION_NAME = "VK_NV_device_diagnostic_checkpoints"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_INTEL_SHADER_INTEGER_FUNCTIONS_2_EXTENSION_NAME = "VK_INTEL_shader_integer_functions2"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME = "VK_INTEL_performance_query"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_PCI_BUS_INFO_EXTENSION_NAME = "VK_EXT_pci_bus_info"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_AMD_DISPLAY_NATIVE_HDR_EXTENSION_NAME = "VK_AMD_display_native_hdr"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_FRAGMENT_DENSITY_MAP_EXTENSION_NAME = "VK_EXT_fragment_density_map"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_SCALAR_BLOCK_LAYOUT_EXTENSION_NAME = "VK_EXT_scalar_block_layout"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME = "VK_GOOGLE_hlsl_functionality1"//achar(0)
  character(len = 46, kind = c_char), parameter :: VK_GOOGLE_HLSL_FUNCTIONALITY1_EXTENSION_NAME = VK_GOOGLE_HLSL_FUNCTIONALITY_1_EXTENSION_NAME//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_GOOGLE_DECORATE_STRING_EXTENSION_NAME = "VK_GOOGLE_decorate_string"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_SUBGROUP_SIZE_CONTROL_EXTENSION_NAME = "VK_EXT_subgroup_size_control"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_AMD_SHADER_CORE_PROPERTIES_2_EXTENSION_NAME = "VK_AMD_shader_core_properties2"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME = "VK_AMD_device_coherent_memory"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_SHADER_IMAGE_ATOMIC_INT64_EXTENSION_NAME = "VK_EXT_shader_image_atomic_int64"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_EXT_MEMORY_BUDGET_EXTENSION_NAME = "VK_EXT_memory_budget"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME = "VK_EXT_memory_priority"//achar(0)
  character(len = 42, kind = c_char), parameter :: VK_NV_DEDICATED_ALLOCATION_IMAGE_ALIASING_EXTENSION_NAME = "VK_NV_dedicated_allocation_image_aliasing"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = "VK_EXT_buffer_device_address"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_TOOLING_INFO_EXTENSION_NAME = "VK_EXT_tooling_info"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_EXT_SEPARATE_STENCIL_USAGE_EXTENSION_NAME = "VK_EXT_separate_stencil_usage"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME = "VK_EXT_validation_features"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME = "VK_NV_cooperative_matrix"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME = "VK_NV_coverage_reduction_mode"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_FRAGMENT_SHADER_INTERLOCK_EXTENSION_NAME = "VK_EXT_fragment_shader_interlock"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_YCBCR_IMAGE_ARRAYS_EXTENSION_NAME = "VK_EXT_ycbcr_image_arrays"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_PROVOKING_VERTEX_EXTENSION_NAME = "VK_EXT_provoking_vertex"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME = "VK_EXT_headless_surface"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_LINE_RASTERIZATION_EXTENSION_NAME = "VK_EXT_line_rasterization"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_SHADER_ATOMIC_FLOAT_EXTENSION_NAME = "VK_EXT_shader_atomic_float"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_HOST_QUERY_RESET_EXTENSION_NAME = "VK_EXT_host_query_reset"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_INDEX_TYPE_UINT8_EXTENSION_NAME = "VK_EXT_index_type_uint8"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_EXT_EXTENDED_DYNAMIC_STATE_EXTENSION_NAME = "VK_EXT_extended_dynamic_state"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_EXT_HOST_IMAGE_COPY_EXTENSION_NAME = "VK_EXT_host_image_copy"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_EXT_MAP_MEMORY_PLACED_EXTENSION_NAME = "VK_EXT_map_memory_placed"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_SHADER_ATOMIC_FLOAT_2_EXTENSION_NAME = "VK_EXT_shader_atomic_float2"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_SURFACE_MAINTENANCE_1_EXTENSION_NAME = "VK_EXT_surface_maintenance1"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_EXT_SWAPCHAIN_MAINTENANCE_1_EXTENSION_NAME = "VK_EXT_swapchain_maintenance1"//achar(0)
  character(len = 42, kind = c_char), parameter :: VK_EXT_SHADER_DEMOTE_TO_HELPER_INVOCATION_EXTENSION_NAME = "VK_EXT_shader_demote_to_helper_invocation"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_NV_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME = "VK_NV_device_generated_commands"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_NV_INHERITED_VIEWPORT_SCISSOR_EXTENSION_NAME = "VK_NV_inherited_viewport_scissor"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME = "VK_EXT_texel_buffer_alignment"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_QCOM_RENDER_PASS_TRANSFORM_EXTENSION_NAME = "VK_QCOM_render_pass_transform"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_DEPTH_BIAS_CONTROL_EXTENSION_NAME = "VK_EXT_depth_bias_control"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_DEVICE_MEMORY_REPORT_EXTENSION_NAME = "VK_EXT_device_memory_report"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_ACQUIRE_DRM_DISPLAY_EXTENSION_NAME = "VK_EXT_acquire_drm_display"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_EXT_ROBUSTNESS_2_EXTENSION_NAME = "VK_EXT_robustness2"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME = "VK_EXT_custom_border_color"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_GOOGLE_USER_TYPE_EXTENSION_NAME = "VK_GOOGLE_user_type"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_NV_PRESENT_BARRIER_EXTENSION_NAME = "VK_NV_present_barrier"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_PRIVATE_DATA_EXTENSION_NAME = "VK_EXT_private_data"//achar(0)
  character(len = 39, kind = c_char), parameter :: VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME = "VK_EXT_pipeline_creation_cache_control"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_NV_DEVICE_DIAGNOSTICS_CONFIG_EXTENSION_NAME = "VK_NV_device_diagnostics_config"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_QCOM_RENDER_PASS_STORE_OPS_EXTENSION_NAME = "VK_QCOM_render_pass_store_ops"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_NV_CUDA_KERNEL_LAUNCH_EXTENSION_NAME = "VK_NV_cuda_kernel_launch"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_NV_LOW_LATENCY_EXTENSION_NAME = "VK_NV_low_latency"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_EXT_DESCRIPTOR_BUFFER_EXTENSION_NAME = "VK_EXT_descriptor_buffer"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_GRAPHICS_PIPELINE_LIBRARY_EXTENSION_NAME = "VK_EXT_graphics_pipeline_library"//achar(0)
  character(len = 44, kind = c_char), parameter :: VK_AMD_SHADER_EARLY_AND_LATE_FRAGMENT_TESTS_EXTENSION_NAME = "VK_AMD_shader_early_and_late_fragment_tests"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_NV_FRAGMENT_SHADING_RATE_ENUMS_EXTENSION_NAME = "VK_NV_fragment_shading_rate_enums"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_NV_RAY_TRACING_MOTION_BLUR_EXTENSION_NAME = "VK_NV_ray_tracing_motion_blur"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_EXT_YCBCR_2PLANE_444_FORMATS_EXTENSION_NAME = "VK_EXT_ycbcr_2plane_444_formats"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_FRAGMENT_DENSITY_MAP_2_EXTENSION_NAME = "VK_EXT_fragment_density_map2"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_QCOM_ROTATED_COPY_COMMANDS_EXTENSION_NAME = "VK_QCOM_rotated_copy_commands"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_IMAGE_ROBUSTNESS_EXTENSION_NAME = "VK_EXT_image_robustness"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_IMAGE_COMPRESSION_CONTROL_EXTENSION_NAME = "VK_EXT_image_compression_control"//achar(0)
  character(len = 39, kind = c_char), parameter :: VK_EXT_ATTACHMENT_FEEDBACK_LOOP_LAYOUT_EXTENSION_NAME = "VK_EXT_attachment_feedback_loop_layout"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_4444_FORMATS_EXTENSION_NAME = "VK_EXT_4444_formats"//achar(0)
  character(len = 20, kind = c_char), parameter :: VK_EXT_DEVICE_FAULT_EXTENSION_NAME = "VK_EXT_device_fault"//achar(0)
  character(len = 45, kind = c_char), parameter :: VK_ARM_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXTENSION_NAME = "VK_ARM_rasterization_order_attachment_access"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_RGBA10X6_FORMATS_EXTENSION_NAME = "VK_EXT_rgba10x6_formats"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_VALVE_MUTABLE_DESCRIPTOR_TYPE_EXTENSION_NAME = "VK_VALVE_mutable_descriptor_type"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_EXT_VERTEX_INPUT_DYNAMIC_STATE_EXTENSION_NAME = "VK_EXT_vertex_input_dynamic_state"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_PHYSICAL_DEVICE_DRM_EXTENSION_NAME = "VK_EXT_physical_device_drm"//achar(0)
  character(len = 37, kind = c_char), parameter :: VK_EXT_DEVICE_ADDRESS_BINDING_REPORT_EXTENSION_NAME = "VK_EXT_device_address_binding_report"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_DEPTH_CLIP_CONTROL_EXTENSION_NAME = "VK_EXT_depth_clip_control"//achar(0)
  character(len = 39, kind = c_char), parameter :: VK_EXT_PRIMITIVE_TOPOLOGY_LIST_RESTART_EXTENSION_NAME = "VK_EXT_primitive_topology_list_restart"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_EXT_PRESENT_MODE_FIFO_LATEST_READY_EXTENSION_NAME = "VK_EXT_present_mode_fifo_latest_ready"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_HUAWEI_SUBPASS_SHADING_EXTENSION_NAME = "VK_HUAWEI_subpass_shading"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_HUAWEI_INVOCATION_MASK_EXTENSION_NAME = "VK_HUAWEI_invocation_mask"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_NV_EXTERNAL_MEMORY_RDMA_EXTENSION_NAME = "VK_NV_external_memory_rdma"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_PIPELINE_PROPERTIES_EXTENSION_NAME = "VK_EXT_pipeline_properties"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_EXT_FRAME_BOUNDARY_EXTENSION_NAME = "VK_EXT_frame_boundary"//achar(0)
  character(len = 45, kind = c_char), parameter :: VK_EXT_MULTISAMPLED_RENDER_TO_SINGLE_SAMPLED_EXTENSION_NAME = "VK_EXT_multisampled_render_to_single_sampled"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_EXT_EXTENDED_DYNAMIC_STATE_2_EXTENSION_NAME = "VK_EXT_extended_dynamic_state2"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_COLOR_WRITE_ENABLE_EXTENSION_NAME = "VK_EXT_color_write_enable"//achar(0)
  character(len = 34, kind = c_char), parameter :: VK_EXT_PRIMITIVES_GENERATED_QUERY_EXTENSION_NAME = "VK_EXT_primitives_generated_query"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_GLOBAL_PRIORITY_QUERY_EXTENSION_NAME = "VK_EXT_global_priority_query"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_IMAGE_VIEW_MIN_LOD_EXTENSION_NAME = "VK_EXT_image_view_min_lod"//achar(0)
  character(len = 18, kind = c_char), parameter :: VK_EXT_MULTI_DRAW_EXTENSION_NAME = "VK_EXT_multi_draw"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_IMAGE_2D_VIEW_OF_3D_EXTENSION_NAME = "VK_EXT_image_2d_view_of_3d"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_EXT_SHADER_TILE_IMAGE_EXTENSION_NAME = "VK_EXT_shader_tile_image"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_OPACITY_MICROMAP_EXTENSION_NAME = "VK_EXT_opacity_micromap"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_EXT_LOAD_STORE_OP_NONE_EXTENSION_NAME = "VK_EXT_load_store_op_none"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_HUAWEI_CLUSTER_CULLING_SHADER_EXTENSION_NAME = "VK_HUAWEI_cluster_culling_shader"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_BORDER_COLOR_SWIZZLE_EXTENSION_NAME = "VK_EXT_border_color_swizzle"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_EXT_PAGEABLE_DEVICE_LOCAL_MEMORY_EXTENSION_NAME = "VK_EXT_pageable_device_local_memory"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_ARM_SHADER_CORE_PROPERTIES_EXTENSION_NAME = "VK_ARM_shader_core_properties"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_ARM_SCHEDULING_CONTROLS_EXTENSION_NAME = "VK_ARM_scheduling_controls"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_EXT_IMAGE_SLICED_VIEW_OF_3D_EXTENSION_NAME = "VK_EXT_image_sliced_view_of_3d"//achar(0)
  character(len = 37, kind = c_char), parameter :: VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_EXTENSION_NAME = "VK_VALVE_descriptor_set_host_mapping"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_EXT_DEPTH_CLAMP_ZERO_ONE_EXTENSION_NAME = "VK_EXT_depth_clamp_zero_one"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_NON_SEAMLESS_CUBE_MAP_EXTENSION_NAME = "VK_EXT_non_seamless_cube_map"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_ARM_RENDER_PASS_STRIPED_EXTENSION_NAME = "VK_ARM_render_pass_striped"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_QCOM_FRAGMENT_DENSITY_MAP_OFFSET_EXTENSION_NAME = "VK_QCOM_fragment_density_map_offset"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_NV_COPY_MEMORY_INDIRECT_EXTENSION_NAME = "VK_NV_copy_memory_indirect"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_NV_MEMORY_DECOMPRESSION_EXTENSION_NAME = "VK_NV_memory_decompression"//achar(0)
  character(len = 40, kind = c_char), parameter :: VK_NV_DEVICE_GENERATED_COMMANDS_COMPUTE_EXTENSION_NAME = "VK_NV_device_generated_commands_compute"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_NV_LINEAR_COLOR_ATTACHMENT_EXTENSION_NAME = "VK_NV_linear_color_attachment"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_GOOGLE_SURFACELESS_QUERY_EXTENSION_NAME = "VK_GOOGLE_surfaceless_query"//achar(0)
  character(len = 43, kind = c_char), parameter :: VK_EXT_IMAGE_COMPRESSION_CONTROL_SWAPCHAIN_EXTENSION_NAME = "VK_EXT_image_compression_control_swapchain"//achar(0)
  character(len = 25, kind = c_char), parameter :: VK_QCOM_IMAGE_PROCESSING_EXTENSION_NAME = "VK_QCOM_image_processing"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_EXT_NESTED_COMMAND_BUFFER_EXTENSION_NAME = "VK_EXT_nested_command_buffer"//achar(0)
  character(len = 42, kind = c_char), parameter :: VK_EXT_EXTERNAL_MEMORY_ACQUIRE_UNMODIFIED_EXTENSION_NAME = "VK_EXT_external_memory_acquire_unmodified"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_EXT_EXTENDED_DYNAMIC_STATE_3_EXTENSION_NAME = "VK_EXT_extended_dynamic_state3"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_EXT_SUBPASS_MERGE_FEEDBACK_EXTENSION_NAME = "VK_EXT_subpass_merge_feedback"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_LUNARG_DIRECT_DRIVER_LOADING_EXTENSION_NAME = "VK_LUNARG_direct_driver_loading"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_EXT_SHADER_MODULE_IDENTIFIER_EXTENSION_NAME = "VK_EXT_shader_module_identifier"//achar(0)
  character(len = 45, kind = c_char), parameter :: VK_EXT_RASTERIZATION_ORDER_ATTACHMENT_ACCESS_EXTENSION_NAME = "VK_EXT_rasterization_order_attachment_access"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_NV_OPTICAL_FLOW_EXTENSION_NAME = "VK_NV_optical_flow"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_EXT_LEGACY_DITHERING_EXTENSION_NAME = "VK_EXT_legacy_dithering"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_PIPELINE_PROTECTED_ACCESS_EXTENSION_NAME = "VK_EXT_pipeline_protected_access"//achar(0)
  character(len = 16, kind = c_char), parameter :: VK_AMD_ANTI_LAG_EXTENSION_NAME = "VK_AMD_anti_lag"//achar(0)
  character(len = 21, kind = c_char), parameter :: VK_EXT_SHADER_OBJECT_EXTENSION_NAME = "VK_EXT_shader_object"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_QCOM_TILE_PROPERTIES_EXTENSION_NAME = "VK_QCOM_tile_properties"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_SEC_AMIGO_PROFILING_EXTENSION_NAME = "VK_SEC_amigo_profiling"//achar(0)
  character(len = 37, kind = c_char), parameter :: VK_QCOM_MULTIVIEW_PER_VIEW_VIEWPORTS_EXTENSION_NAME = "VK_QCOM_multiview_per_view_viewports"//achar(0)
  character(len = 37, kind = c_char), parameter :: VK_NV_RAY_TRACING_INVOCATION_REORDER_EXTENSION_NAME = "VK_NV_ray_tracing_invocation_reorder"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_NV_EXTENDED_SPARSE_ADDRESS_SPACE_EXTENSION_NAME = "VK_NV_extended_sparse_address_space"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_EXT_MUTABLE_DESCRIPTOR_TYPE_EXTENSION_NAME = "VK_EXT_mutable_descriptor_type"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_EXT_LEGACY_VERTEX_ATTRIBUTES_EXTENSION_NAME = "VK_EXT_legacy_vertex_attributes"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_EXT_LAYER_SETTINGS_EXTENSION_NAME = "VK_EXT_layer_settings"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_ARM_SHADER_CORE_BUILTINS_EXTENSION_NAME = "VK_ARM_shader_core_builtins"//achar(0)
  character(len = 38, kind = c_char), parameter :: VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_EXTENSION_NAME = "VK_EXT_pipeline_library_group_handles"//achar(0)
  character(len = 44, kind = c_char), parameter :: VK_EXT_DYNAMIC_RENDERING_UNUSED_ATTACHMENTS_EXTENSION_NAME = "VK_EXT_dynamic_rendering_unused_attachments"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_NV_LOW_LATENCY_2_EXTENSION_NAME = "VK_NV_low_latency2"//achar(0)
  character(len = 40, kind = c_char), parameter :: VK_QCOM_MULTIVIEW_PER_VIEW_RENDER_AREAS_EXTENSION_NAME = "VK_QCOM_multiview_per_view_render_areas"//achar(0)
  character(len = 31, kind = c_char), parameter :: VK_NV_PER_STAGE_DESCRIPTOR_SET_EXTENSION_NAME = "VK_NV_per_stage_descriptor_set"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_QCOM_IMAGE_PROCESSING_2_EXTENSION_NAME = "VK_QCOM_image_processing2"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_QCOM_FILTER_CUBIC_WEIGHTS_EXTENSION_NAME = "VK_QCOM_filter_cubic_weights"//achar(0)
  character(len = 22, kind = c_char), parameter :: VK_QCOM_YCBCR_DEGAMMA_EXTENSION_NAME = "VK_QCOM_ycbcr_degamma"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_QCOM_FILTER_CUBIC_CLAMP_EXTENSION_NAME = "VK_QCOM_filter_cubic_clamp"//achar(0)
  character(len = 46, kind = c_char), parameter :: VK_EXT_ATTACHMENT_FEEDBACK_LOOP_DYNAMIC_STATE_EXTENSION_NAME = "VK_EXT_attachment_feedback_loop_dynamic_state"//achar(0)
  character(len = 23, kind = c_char), parameter :: VK_MSFT_LAYERED_DRIVER_EXTENSION_NAME = "VK_MSFT_layered_driver"//achar(0)
  character(len = 37, kind = c_char), parameter :: VK_NV_DESCRIPTOR_POOL_OVERALLOCATION_EXTENSION_NAME = "VK_NV_descriptor_pool_overallocation"//achar(0)
  character(len = 24, kind = c_char), parameter :: VK_NV_RAW_ACCESS_CHAINS_EXTENSION_NAME = "VK_NV_raw_access_chains"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_NV_COMMAND_BUFFER_INHERITANCE_EXTENSION_NAME = "VK_NV_command_buffer_inheritance"//achar(0)
  character(len = 35, kind = c_char), parameter :: VK_NV_SHADER_ATOMIC_FLOAT16_VECTOR_EXTENSION_NAME = "VK_NV_shader_atomic_float16_vector"//achar(0)
  character(len = 36, kind = c_char), parameter :: VK_EXT_SHADER_REPLICATED_COMPOSITES_EXTENSION_NAME = "VK_EXT_shader_replicated_composites"//achar(0)
  character(len = 29, kind = c_char), parameter :: VK_NV_RAY_TRACING_VALIDATION_EXTENSION_NAME = "VK_NV_ray_tracing_validation"//achar(0)
  character(len = 33, kind = c_char), parameter :: VK_EXT_DEVICE_GENERATED_COMMANDS_EXTENSION_NAME = "VK_EXT_device_generated_commands"//achar(0)
  character(len = 32, kind = c_char), parameter :: VK_MESA_IMAGE_ALIGNMENT_CONTROL_EXTENSION_NAME = "VK_MESA_image_alignment_control"//achar(0)
  character(len = 27, kind = c_char), parameter :: VK_EXT_DEPTH_CLAMP_CONTROL_EXTENSION_NAME = "VK_EXT_depth_clamp_control"//achar(0)
  character(len = 26, kind = c_char), parameter :: VK_NV_COOPERATIVE_MATRIX_2_EXTENSION_NAME = "VK_NV_cooperative_matrix2"//achar(0)
  character(len = 30, kind = c_char), parameter :: VK_KHR_ACCELERATION_STRUCTURE_EXTENSION_NAME = "VK_KHR_acceleration_structure"//achar(0)
  character(len = 28, kind = c_char), parameter :: VK_KHR_RAY_TRACING_PIPELINE_EXTENSION_NAME = "VK_KHR_ray_tracing_pipeline"//achar(0)
  character(len = 17, kind = c_char), parameter :: VK_KHR_RAY_QUERY_EXTENSION_NAME = "VK_KHR_ray_query"//achar(0)
  character(len = 19, kind = c_char), parameter :: VK_EXT_MESH_SHADER_EXTENSION_NAME = "VK_EXT_mesh_shader"//achar(0)


  !? VkObjectType. ==========================================================================


  ! Provided by VK_VERSION_1_0
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_UNKNOWN = 0
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_INSTANCE = 1
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PHYSICAL_DEVICE = 2
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DEVICE = 3
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_QUEUE = 4
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SEMAPHORE = 5
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_COMMAND_BUFFER = 6
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_FENCE = 7
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DEVICE_MEMORY = 8
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_BUFFER = 9
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_IMAGE = 10
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_EVENT = 11
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_QUERY_POOL = 12
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_BUFFER_VIEW = 13
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_IMAGE_VIEW = 14
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SHADER_MODULE = 15
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PIPELINE_CACHE = 16
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PIPELINE_LAYOUT = 17
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_RENDER_PASS = 18
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PIPELINE = 19
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT = 20
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SAMPLER = 21
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DESCRIPTOR_POOL = 22
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DESCRIPTOR_SET = 23
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_FRAMEBUFFER = 24
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_COMMAND_POOL = 25
  ! Provided by VK_VERSION_1_1
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION = 1000156000
  ! Provided by VK_VERSION_1_1
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE = 1000085000
  ! Provided by VK_VERSION_1_3
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PRIVATE_DATA_SLOT = 1000295000
  ! Provided by VK_KHR_surface
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SURFACE_KHR = 1000000000
  ! Provided by VK_KHR_swapchain
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SWAPCHAIN_KHR = 1000001000
  ! Provided by VK_KHR_display
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DISPLAY_KHR = 1000002000
  ! Provided by VK_KHR_display
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DISPLAY_MODE_KHR = 1000002001
  ! Provided by VK_EXT_debug_report
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT = 1000011000
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_VIDEO_SESSION_KHR = 1000023000
  ! Provided by VK_KHR_video_queue
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR = 1000023001
  ! Provided by VK_NVX_binary_import
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_CU_MODULE_NVX = 1000029000
  ! Provided by VK_NVX_binary_import
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_CU_FUNCTION_NVX = 1000029001
  ! Provided by VK_EXT_debug_utils
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000
  ! Provided by VK_KHR_acceleration_structure
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000
  ! Provided by VK_EXT_validation_cache
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_VALIDATION_CACHE_EXT = 1000160000
  ! Provided by VK_NV_ray_tracing
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
  ! Provided by VK_INTEL_performance_query
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL = 1000210000
  ! Provided by VK_KHR_deferred_host_operations
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR = 1000268000
  ! Provided by VK_NV_device_generated_commands
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV = 1000277000
  ! Provided by VK_NV_cuda_kernel_launch
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_CUDA_MODULE_NV = 1000307000
  ! Provided by VK_NV_cuda_kernel_launch
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_CUDA_FUNCTION_NV = 1000307001
  ! Provided by VK_FUCHSIA_buffer_collection
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA = 1000366000
  ! Provided by VK_EXT_opacity_micromap
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_MICROMAP_EXT = 1000396000
  ! Provided by VK_NV_optical_flow
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV = 1000464000
  ! Provided by VK_EXT_shader_object
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SHADER_EXT = 1000482000
  ! Provided by VK_KHR_pipeline_binary
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PIPELINE_BINARY_KHR = 1000483000
  ! Provided by VK_EXT_device_generated_commands
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_EXT = 1000572000
  ! Provided by VK_EXT_device_generated_commands
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_INDIRECT_EXECUTION_SET_EXT = 1000572001
  ! Provided by VK_KHR_descriptor_update_template
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR = VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE
  ! Provided by VK_KHR_sampler_ycbcr_conversion
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR = VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION
  ! Provided by VK_EXT_private_data
  integer(c_int), parameter, public :: VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT = VK_OBJECT_TYPE_PRIVATE_DATA_SLOT


end module forvulkan_parameters
