{% extends '//mix/template/c_std.sh' %}

{% block fetch %}
https://github.com/pg83/heirloom/archive/a47c4acf9fb43b89f9fb0afdcf9008121d50d806.zip
19b59804cf21bf9bd266d9cb261ecb2c
{% endblock %}

{% block bld_libs %}
lib/c
{% endblock %}

{% block bld_tool %}
bin/make
{% endblock %}

{% block cpp_defines %}
EXTERN=extern
{% endblock %}

{% block setup %}
export CPPFLAGS="-I${PWD}/heirloom/libcommon -I${PWD}/heirloom/libuxre ${CPPFLAGS}"
export LDFLAGS="-L${PWD}/heirloom/libcommon -L${PWD}/heirloom/libuxre ${LDFLAGS}"
export CFLAGS="-w -fcommon ${CFLAGS}"
export PATH="${out}/bin:${PATH}"
{% endblock %}

{% block build %}
xmake() {
    make -f Makefile.mk CC=${CC} AR=${AR} RANLIB=${RANLIB}  \
          INSTALL=install STRIP=true CFLAGS="${CFLAGS}"     \
          ROOT= LIBDIR="${out}/bin/lib" BINDIR="${out}/bin" \
          MANDIR="${out}/man" YACC=yacc LEX=lex             \
          HOSTCC="${CC} ${CPPFLAGS} ${CFLAGS}"              \
          UCBINST=install LNS="ln -s" MANINST=install       \
          SV3BIN="${out}/bin" SU3BIN="${out}/bin"           \
          SUSBIN="${out}/bin" DEFBIN="${out}/bin"           \
          S42BIN="${out}/bin" DEFLIB="${out}/bin/lib" "$@"
}

(cd heirloom-devtools/yacc; xmake; xmake install)
(cd heirloom-devtools/lex; xmake; xmake install)

cd heirloom

(cd libcommon; xmake)
(cd libuxre; xmake)

for x in bc ed; do (
    cd ${x}

    xmake LCOMMON="-lcommon" LUXRE="-luxre"
    xmake install
) done
{% endblock %}

{% block install %}
cd ${out}/bin
rm lex yacc
{% endblock %}