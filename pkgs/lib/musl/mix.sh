{% extends '//lib/musl/template/mix.sh' %}

{% block bld_deps %}
env/c/nort/package.py
boot/final/env/tools/mix.sh
{% endblock %}

{% block cflags %}
export CPPFLAGS="-D__libc_realloc=realloc -D__libc_free=free -D__libc_malloc=malloc -D__libc_calloc=calloc ${CPPFLAGS}"
{% endblock %}

{% block patch %}
>src/malloc/lite_malloc.c
{% endblock %}

{% block musl_postinstall %}
rm -rf ${out}/lib/libc.a obj/src/malloc
ar q ${out}/lib/libc.a $(find obj -type f | sort)
ranlib ${out}/lib/libc.a
{% endblock %}
