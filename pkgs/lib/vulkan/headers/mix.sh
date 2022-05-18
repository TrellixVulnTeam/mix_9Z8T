{% extends '//mix/cmake.sh' %}

{% block fetch %}
#https://github.com/KhronosGroup/Vulkan-Headers/archive/refs/tags/sdk-1.3.204.1.tar.gz
#sha:9c4d33f71467c915749fbf48c0c3a8ee7833f15babf398e3463cd88791fb592e

https://github.com/KhronosGroup/Vulkan-Headers/archive/refs/tags/sdk-1.3.211.0.tar.gz
sha:c464bcdc24b7541ac4378a270617a23d4d92699679a73f95dc4b9e1da924810a
{% endblock %}

{% block lib_deps %}
lib/c
lib/c++
{% endblock %}

{% block postinstall %}
echo 'TODO(pg): check it'
{% endblock %}

{% block env %}
export VK_XML="${out}/share/vulkan/registry/vk.xml"
{% endblock %}
