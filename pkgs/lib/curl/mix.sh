{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/curl/curl/releases/download/curl-7_79_1/curl-7.79.1.tar.xz
# md5 74d3c4ca8aaa6c0619806d6e246e65fb
{% endblock %}

{% block lib_deps %}
lib/z/mix.sh
lib/c-ares/mix.sh
lib/idn2/mix.sh
lib/zstd/mix.sh
lib/brotli/mix.sh
lib/nghttp2/mix.sh
lib/openssl/mix.sh
{{'sys/framework/SystemConfiguration/package.py' | darwin}}
{% endblock %}

{% block bld_deps %}
dev/doc/groff/mix.sh
dev/build/make/mix.sh
dev/build/pkg-config/mix.sh
env/std/mix.sh
{% endblock %}

{% block coflags %}
--enable-manual
{% endblock %}

{% block env %}
export CMFLAGS="-DCURL_LIBRARY=${out}/lib/libcurl.a -DCURL_INCLUDE_DIR=${out}/include \${CMFLAGS}"
{% endblock %}