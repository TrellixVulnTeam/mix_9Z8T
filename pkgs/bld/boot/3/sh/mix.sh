{% extends '//bin/dash/sh/mix.sh' %}

{% block make_no_thrs %}{% endblock %}

{% block bld_libs %}
bld/boot/3/lib/c
{% endblock %}

{% block bld_deps %}
bld/boot/3/make
bld/boot/2/env
{% endblock %}

{% block setup_tools %}
ln -s $(which nawk) awk
{% endblock %}
