{% extends '//dev/lang/python/3/10/package.sh' %}

{% block deps %}
# bld {{'lib/linux' | linux}} lib/z env/std boot/final/env/tools
{% endblock %}

{% block extra_modules %}
{% endblock %}

{% block extra_tests %}
{% endblock %}

{% block patch_ffi %}
{% endblock %}

{% block coflags %}
--with-ensurepip=no
{% endblock %}