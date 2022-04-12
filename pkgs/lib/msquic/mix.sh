{% extends '//mix/cmake.sh' %}

{# broken now #}

{% block fetch %}
https://github.com/microsoft/msquic/archive/refs/tags/v2.0.2.tar.gz
sha:4df9e591561795a47165237dcfb670f4f585e38fb2667320b6019c8ad34b28ed
{% endblock %}

{% block lib_deps %}
lib/c
lib/linux
lib/openssl
{% endblock %}

{% block build_flags %}
wrap_cc
{% endblock %}