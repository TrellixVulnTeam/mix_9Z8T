{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/libsigsegv/libsigsegv-2.13.tar.gz
# md5 cf4a5fdc95e5494eaa190825af11f3be
{% endblock %}

{% block deps %}
# bld env/c/package.sh
# bld boot/final/env/tools/package.sh
{% endblock %}
