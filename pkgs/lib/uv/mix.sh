{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://dist.libuv.org/dist/v1.41.0/libuv-v1.41.0.tar.gz
# md5 d990b0770dd2b15f7a8399580d55d32c
{% endblock %}

{% block bld_deps %}
dev/build/automake/1.16.3/mix.sh
env/autohell/mix.sh
{% endblock %}

{% block autoreconf %}
export LIBTOOLIZE=libtoolize

dash ./autogen.sh
{% endblock %}

{% block env %}
export CMFLAGS="-DCMAKE_USE_SYSTEM_LIBUV=ON -DLibUV_LIBRARY=${out}/lib/libuv.a -DLibUV_INCLUDE_DIR=${out}/include \${CMFLAGS}"
{% endblock %}
