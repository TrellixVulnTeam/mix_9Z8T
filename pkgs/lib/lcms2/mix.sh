{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/mm2/Little-CMS/archive/refs/tags/lcms2.12.tar.gz
0359f600f305143c5457dd075d23bf07
{% endblock %}

{% block bld_tool %}
bin/auto/conf/2/69
bin/auto/make/1/16
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}
