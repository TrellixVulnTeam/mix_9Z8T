{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://git.sr.ht/~kennylevinsen/seatd/archive/0.6.3.tar.gz
0d375928bbcc39b1652e2730e01e6089
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block bld_libs %}
lib/linux
{% endblock %}

{% block setup %}
export CPPFLAGS="-w ${CPPFLAGS}"
{% endblock %}

{% block meson_flags %}
libseat-builtin=enabled
defaultpath=/var/run/seatd.sock
{% endblock %}
