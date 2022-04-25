{% extends '//lib/qt/6/base/t/mix.sh' %}

{% block bld_libs %}
lib/linux
{{super()}}
{% endblock %}

{% block qt_codegen %}
bld/perl
{% endblock %}

{% block cmake_flags %}
INSTALL_LIBEXECDIR=bin
QT_FEATURE_sql=OFF
QT_FEATURE_gui=OFF
QT_FEATURE_widgets=OFF
QT_FEATURE_opengl=OFF
QT_FEATURE_testlib=OFF
QT_FEATURE_printsupport=OFF
QT_FEATURE_reduce_relocations=OFF
QT_FEATURE_static_runtime=ON
QT_FEATURE_static=ON
QT_FEATURE_shared=OFF
{% endblock %}

{% block env %}
export QT_HOST_PATH=${out}
{% endblock %}

{% block postinstall %}
rm -rf ${out}/include ${out}/lib/*.a ${out}/plugins ${out}/modules
{% endblock %}
