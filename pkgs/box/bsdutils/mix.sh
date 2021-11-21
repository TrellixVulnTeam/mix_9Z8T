{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://github.com/dcantrell/bsdutils/archive/a1eeb6c8ca7745a28b68ae87b7532d8868b53515.zip
f3a640fd2b0939d0c17a2eb17801919c
{% endblock %}

{% block bld_libs %}
box/bsdutils/libs/mix.sh(openssl=1)
{% endblock %}

{% block bld_tool %}
dev/build/pkg-config/mix.sh
dev/lang/flex/mix.sh
dev/lang/byacc/mix.sh
{% endblock %}
