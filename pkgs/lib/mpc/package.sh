{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/mpc/mpc-1.2.1.tar.gz
# md5 9f16c976c25bb0f76b50be749cd7a3a8
{% endblock %}

{% block deps %}
# lib lib/gmp/package.sh
# lib lib/mpfr/package.sh
# bld dev/build/make/package.sh
# bld env/std/package.sh
{% endblock %}

{% block env %}
export COFLAGS="--with-mpc=${out} \${COFLAGS}"
{% endblock %}
