{% extends '//die/c_std.sh' %}

{% block fetch %}
https://ftp.mozilla.org/pub/security/nss/releases/NSS_3_66_RTM/src/nss-3.66-with-nspr-4.30.tar.gz
4addeabd4aedc1d589cc836577938da6
{% endblock %}

{% block unpack %}
{{super()}}
cd nss
{% endblock %}

{% block lib_deps %}
lib/c
lib/z
lib/c++
lib/nspr
lib/sqlite3
{% endblock %}

{% block bld_libs %}
lib/linux
{% endblock %}

{% block build_flags %}
wrap_cc
{% endblock %}

{% block bld_tool %}
bin/gyp
bld/perl
bld/bash
bld/ninja
bld/python/2
bin/binutils(for_target={{target.gnu.three}})
{% endblock %}

{% block setup_tools %}
ln -s $(which python2) python
{{super()}}
{% endblock %}

{% block build %}
bash build.sh -v -j ${make_thrs} \
    --clang --gyp \
    --disable-tests \
    --static \
    --system-nspr \
    --system-sqlite \
    -Duse_system_zlib=1 \
    -Ddisable_fips=1 \
    -Dsign_libs=0
{% endblock %}

{% block install %}
cp -R ../dist/Debug/* ${out}/
{% endblock %}

{% block patch %}
sed -e 's|SECKEY_PQGParamsTemplate|SECKEY_PQGParamsTemplate_xxx|' -i cmd/certutil/keystuff.c
sed -e 's|CERT_OidSeqTemplate|CERT_OidSeqTemplate_xxx|' -i cmd/certutil/certext.c
{% endblock %}
