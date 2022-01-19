{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/OpenVPN/openvpn/archive/refs/tags/v2.5.4.tar.gz
0a20d4bb3304b8f221c0893f4116449d
{% endblock %}

{% block bld_libs %}
lib/c
lib/lz4
lib/lzo
{% if target.os == 'linux' %}
lib/linux
{% endif %}
lib/{{openvpnssl or 'openssl'}}
{% endblock %}

{% block bld_tool %}
pip/docutils/scripts
bin/auto/conf/2/69
bin/auto/make/1/16
{% endblock %}

{% block configure_flags %}
--disable-plugin-auth-pam
--disable-plugin-down-root
{% endblock %}