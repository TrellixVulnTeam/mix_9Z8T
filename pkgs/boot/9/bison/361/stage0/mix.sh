{% extends '//boot/9/bison/template/mix.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/bison/bison-3.6.1.tar.xz
16fa3e60f2c33888c6ef7af64c89e182
{% endblock %}

{% block bison %}
boot/9/bison/351/stage1/mix.sh
boot/4/patch/mix.sh
{% endblock %}

{% block bison_patch %}
(base64 -d | patch -p0) << EOF
{% include 'bison.diff/base64' %}
EOF
{% endblock %}

{% block bison_cflags %}
export CPPFLAGS="-DGRAM_error=1 ${CPPFLAGS}"
{% endblock %}