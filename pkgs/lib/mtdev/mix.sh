{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://bitmath.org/code/mtdev/mtdev-1.1.6.tar.bz2
bf8ef2482e84a00b5db8fbd3ce00e249
{% endblock %}

{% block bld_tool %}
dev/build/autoconf/2/69/mix.sh
dev/build/automake/1.16.3/mix.sh
{% endblock %}

{% block bld_libs %}
lib/linux/mix.sh
{% endblock %}