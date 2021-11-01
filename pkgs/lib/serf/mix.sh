{% extends '//mix/template/template.sh' %}

{% block fetch %}
# url https://www.apache.org/dist/serf/serf-1.3.9.tar.bz2
# md5 370a6340ff20366ab088012cd13f2b57
{% endblock %}

{% block lib_deps %}
lib/z/mix.sh
lib/apr/mix.sh
lib/openssl/mix.sh
lib/apr-util/mix.sh
{% endblock %}

{% block bld_deps %}
dev/build/scons/mix.sh
gnu/patch/mix.sh
env/std/mix.sh
{% endblock %}

{% block patch %}
patch -p1 << EOF
{% include 'p00.patch' %}
EOF

patch -p1 << EOF
{% include 'p01.patch' %}
EOF
{% endblock %}

{% block build %}
scons PREFIX=${out}          \
    OPENSSL="${lib_openssl}" \
    ZLIB="${lib_z}"          \
    APR="${lib_apr}"         \
    APU="${lib_apr_util}"
{% endblock %}

{% block install %}
scons install
{% endblock %}

{% block env %}
export COFLAGS="--with-serf=${out} --with-libserf=${out} \${COFLAGS}"
{% endblock %}
