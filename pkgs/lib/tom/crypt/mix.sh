{% extends '//mix/template/make.sh' %}

{% block fetch %}
# url https://github.com/libtom/libtomcrypt/releases/download/v1.18.2/crypt-1.18.2.tar.xz
# md5 e8d22351b7c95bef423c1cd02dcf836d
{% endblock %}

{% block deps %}
# lib lib/tom/math/mix.sh
# bld env/std/mix.sh
# bld dev/build/make/mix.sh
{% endblock %}

{% block cflags %}
export CFLAGS="-DUSE_LTM -DLTM_DESC ${CFLAGS}"
{% endblock %}