{% extends '//mix/cmake.sh' %}

{% block fetch %}
https://github.com/KhronosGroup/Vulkan-Tools/archive/refs/tags/sdk-1.3.204.1.tar.gz
sha:3242f9ad158d02af9cc44186cbd415982387356a2dd8c0492af2fdace8c22f49

#https://github.com/KhronosGroup/Vulkan-Tools/archive/refs/tags/v1.2.201.tar.gz
#bf84db0b41149f391066c2c7297dbdb3
{% endblock %}

{% block bld_libs %}
lib/c
lib/drivers/3d
lib/vulkan/loader
lib/vulkan/headers
{% endblock %}

{% block bld_tool %}
bin/glslang
bin/pkg-config
bin/wayland/protocols
{% endblock %}

{% block cmake_flags %}
BUILD_ICD=NO
BUILD_WSI_XCB_SUPPORT=OFF
BUILD_WSI_XLIB_SUPPORT=OFF
CUBE_WSI_SELECTION=WAYLAND
{% endblock %}
