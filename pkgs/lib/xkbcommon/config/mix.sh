{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
http://www.x.org/releases/individual/data/xkeyboard-config/xkeyboard-config-2.24.tar.bz2
74c4bdf52382127cb5802c3f2ab441e0
{% endblock %}

{% block make_thrs %}1{% endblock %}

{% block bld_tool %}
lib/xslt/mix.sh
lib/intl/tool/mix.sh
gnu/gettext/mix.sh
tool/compress/gzip/mix.sh
{% endblock %}

{% block coflags %}
--disable-runtime-deps
{% endblock %}

{% block env %}
export XKB_CONFIG="${out}/share/X11/xkb"
{% endblock %}

{% block postinstall %}
rm -rf ${out}/lib ${out}/bin ${out}/include
{% endblock %}