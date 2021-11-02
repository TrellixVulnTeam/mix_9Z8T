{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://strace.io/files/5.14/strace-5.14.tar.xz
# md5 36c1c17f31855617b7898d2fd5abb9e2
{% endblock %}

{% block bld_deps %}
lib/linux/mix.sh
lib/elfutils/mix.sh
env/autohell/mix.sh
{% endblock %}

{% block coflags %}
--enable-mpers=no
--with-libdw
{% endblock %}
