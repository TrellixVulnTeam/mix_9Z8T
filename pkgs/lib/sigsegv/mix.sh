{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/libsigsegv/libsigsegv-2.13.tar.gz
# md5 cf4a5fdc95e5494eaa190825af11f3be
{% endblock %}

{% block bld_deps %}
env/c/mix.sh
boot/final/env/tools/mix.sh
{% endblock %}
