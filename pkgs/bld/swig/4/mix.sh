{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://downloads.sourceforge.net/project/swig/swig/swig-4.0.2/swig-4.0.2.tar.gz
7c3e46cb5af2b469722cafa0d91e127b
{% endblock %}

{% block bld_libs %}
lib/c
lib/c++
lib/pcre
{% endblock %}

{% block bld_tool %}
bin/bison/3/7
{% endblock %}

{% block configure_flags %}
--with-boost=no
{% endblock %}