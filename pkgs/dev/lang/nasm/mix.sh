{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/netwide-assembler/nasm/archive/refs/tags/nasm-2.15.05.tar.gz
2e154a96a13bf937d5247467d986bbde
{% endblock %}

{% block bld_tool %}
dev/tool/perl
bin/auto/conf/2/69
bin/auto/make/1/16
{% endblock %}

{% block autoreconf %}
sh autogen.sh
{% endblock %}

{% block patch %}
>nasm.1
>ndisasm.1
{% endblock %}

{% block bld_libs %}
lib/c
{% endblock %}
