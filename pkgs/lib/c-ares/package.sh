{% extends '//util/autohell.sh' %}

{% block fetch %}
# url https://c-ares.haxx.se/download/c-ares-1.17.2.tar.gz
# md5 3802264830c6886411dac606c66fdbf8
{% endblock %}

{% block deps %}
# bld dev/build/make env/std
{% endblock %}

{% block coflags %}
--disable-tests
{% endblock %}

{% block env %}
export CPPFLAGS="-I${out}/include \${CPPFLAGS}"
export LDFLAGS="-L${out}/lib -lresolv -lcares \${LDFLAGS}"
export PKG_CONFIG_PATH="${out}/lib/pkgconfig:\$PKG_CONFIG_PATH"
{% endblock %}
