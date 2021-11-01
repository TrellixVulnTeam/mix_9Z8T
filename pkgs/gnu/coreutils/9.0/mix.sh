{% extends '//gnu/coreutils/template/mix.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/coreutils/coreutils-9.0.tar.xz
# md5 0d79ae8a6124546e3b94171375e5e5d0
{% endblock %}

{% block coreutils_deps_extra %}
# bld lib/openssl/mix.sh
# bld lib/gmp/mix.sh
# bld dev/lang/bison/3.7.6/mix.sh
# bld dev/lang/perl5/mix.sh
{% endblock %}

{% block coreutils_coflags_extra %}
--with-openssl=yes
{% endblock %}