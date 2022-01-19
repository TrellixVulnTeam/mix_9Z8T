{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://gitlab.freedesktop.org/xorg/lib/libpciaccess/-/archive/libpciaccess-0.16/libpciaccess-libpciaccess-0.16.tar.bz2
f114fbc4c92f62d256ed54ace17e1ffc
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block bld_tool %}
bin/auto/conf/xorg
bin/auto/conf/2/69
bin/auto/make/1/16
{% endblock %}
