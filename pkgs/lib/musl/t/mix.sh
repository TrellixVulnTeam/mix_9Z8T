{% extends '//mix/autohell.sh' %}

{% block fetch %}
https://musl.libc.org/releases/musl-1.2.3.tar.gz
sha:7d5b0b6062521e4627e099e4c9dc8248d32a30285e959b7eecaa780cf8cfd4a4
{% endblock %}

{% block lib_deps %}
lib/build
{% endblock %}

{% block configure_script %}
./configure
{% endblock %}

{% block setup %}
export PICFLAGS="-fno-pic -fno-pie"
export CPPFLAGS="${PICFLAGS} ${CPPFLAGS}"
{% endblock %}

{% block patch %}
cat << EOF > src/stdlib/dso_handle.c
void* __dso_handle = (void*)&__dso_handle;
EOF
{% endblock %}

{% block install %}
{{super()}}
cd ${out}/lib
ar q libcrt.a crt1.o crti.o crtn.o
ranlib libcrt.a
{% endblock %}

{% block env_lib %}
export CMFLAGS="-DLIBCXX_HAS_MUSL_LIBC=yes \${CMFLAGS}"
export CPPFLAGS="${PICFLAGS} -isystem ${out}/include \${CPPFLAGS}"
export LDFLAGS="-static \${LDFLAGS}"
{% endblock %}

{% block test_lib %}
. ${out}/env

cat << EOF > main.c
#include <stdio.h>
#include <stdlib.h>

int main() {
    printf("hello!\n");
    exit(0);
}
EOF

${CC} -o main main.c ${CPPFLAGS} ${CFLAGS} ${LDFLAGS}
{% endblock %}

{% block test_execute %}
./main
{% endblock %}
