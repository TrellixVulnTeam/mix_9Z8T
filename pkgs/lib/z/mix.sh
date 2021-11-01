{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url http://zlib.net/zlib-1.2.11.tar.xz
# md5 85adef240c5f370b308da8c938951a68
{% endblock %}

{% block deps %}
# bld env/c/mix.sh
# bld boot/final/env/tools/mix.sh
{% endblock %}

{% block configure %}
dash ./configure --static --64 --prefix="${out}"
{% endblock %}

{% block build %}
make -j ${make_thrs} TEST_LDFLAGS="-L. libz.a"
{% endblock %}

{% block postinstall %}
mkdir ${out}/bin && cp minigzip ${out}/bin/
{% endblock %}

{% block env %}
export COFLAGS="--with-z=${out} \${COFLAGS}"
export CMFLAGS="-DZLIB_LIBRARY=${out}/lib/libz.a -DZLIB_INCLUDE_DIR=${out}/include -DCMAKE_USE_SYSTEM_ZLIB=ON \${CMFLAGS}"
{% endblock %}