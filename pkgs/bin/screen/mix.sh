{% extends '//mix/autorehell.sh' %}

{% block fetch %}
http://ftp.gnu.org/gnu/screen/screen-4.9.0.tar.gz
sha:f9335281bb4d1538ed078df78a20c2f39d3af9a4e91c57d084271e0289c730f4
{% endblock %}

{% block bld_libs %}
lib/c
lib/pam
lib/curses
{% endblock %}

{% block bld_tool %}
bin/texinfo
{% endblock %}

{% block configure_flags %}
--enable-pam
--disable-socket-dir
--enable-colors256
{% endblock %}
