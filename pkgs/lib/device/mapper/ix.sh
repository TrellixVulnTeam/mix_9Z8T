{% extends '//die/autohell.sh' %}

{% block fetch %}
http://mirrors.kernel.org/sourceware/lvm2/LVM2.2.03.16.tgz
sha:e661ece15b5d88d8abe39a4c1e1db2f43e1896f019948bb98b0e15d777680786
{% endblock %}

{% block lib_deps %}
lib/c
lib/udev
{% endblock %}

{% block bld_libs %}
lib/linux
{% endblock %}

{% block bld_tool %}
bin/elfutils
{% endblock %}

{% block build_flags %}
wrap_cc
{% endblock %}

{% block configure_flags %}
--enable-pkgconfig
--enable-static_link
{% endblock %}

{% block make_target %}
device-mapper
{% endblock %}

{% block make_install_target %}
install_device-mapper
{% endblock %}

{% block install %}
{{super()}}
mv ${out}/sbin ${out}/bin
{% endblock %}
