{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://download.gnome.org/sources/pango/1.49/pango-1.49.4.tar.xz
190bd00327ba5cff928ca06f13756d4f
{% endblock %}

{% block lib_deps %}
lib/glib/mix.sh
lib/cairo/mix.sh
lib/fribidi/mix.sh
lib/freetype/mix.sh
lib/harfbuzz/mix.sh
lib/json/glib/mix.sh
lib/fontconfig/mix.sh
{% endblock %}

{% block bld_tool %}
lib/glib/bin/mix.sh
{% endblock %}

{% block setup %}
export CPPFLAGS="-w ${CPPFLAGS}"
{% endblock %}

{% block meson_flags %}

{% endblock %}