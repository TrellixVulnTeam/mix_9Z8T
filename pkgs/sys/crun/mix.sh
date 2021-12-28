{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/containers/crun/releases/download/1.2/crun-1.2.tar.xz
cbfee6db4d034bfa62effe695da2bbd6
{% endblock %}

{% block bld_libs %}
lib/c
lib/intl
lib/yajl
lib/cap
lib/seccomp
lib/argp/standalone
{% endblock %}

{% block bld_tool %}
dev/tool/python
{% endblock %}

{% block configure_flags %}
--disable-systemd
{% endblock %}
