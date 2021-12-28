{% extends '//lib/lua/modules/t.sh' %}

{% block fetch %}
https://github.com/libmpack/libmpack-lua/archive/refs/tags/1.0.9.tar.gz
a2d0d5e25aefc7b3b51c816de8096fd6
{% endblock %}

{% block lib_deps %}
{{super()}}
lib/mpack
{% endblock %}

{% block setup %}
{{super()}}
export CPPFLAGS="-DMPACK_USE_SYSTEM=1 ${CPPFLAGS}"
{% endblock %}
