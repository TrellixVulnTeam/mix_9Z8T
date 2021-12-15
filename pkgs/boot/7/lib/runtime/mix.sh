{% extends '//lib/c++/mix.sh' %}

{% block lib_deps %}
boot/7/lib/dso_handle/mix.sh
{% endblock %}

{% block bld_libs %}
{% if target.os == 'linux' %}
boot/7/lib/linux/mix.sh
{% endif %}
{% endblock %}

{% block bld_deps %}
boot/7/cmake/mix.sh
boot/7/python/mix.sh
boot/6/env/std/mix.sh
{% endblock %}

{% block setup %}
export CPPFLAGS="-I${PWD}/libunwind/include ${CPPFLAGS}"
{{super()}}
{% endblock %}