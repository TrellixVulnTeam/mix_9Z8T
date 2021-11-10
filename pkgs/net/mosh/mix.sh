{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/mobile-shell/mosh/archive/refs/tags/mosh-1.3.2.tar.gz
04f48ea1b98ba1799593ca9c5b3cc90f
{% endblock %}

{% block bld_deps %}
lib/c++/mix.sh
lib/protobuf/mix.sh
lib/curses/any/mix.sh
dev/tool/protoc/mix.sh
dev/build/autoconf/2.69/mix.sh
dev/build/automake/1.16.3/mix.sh
{{super()}}
{% endblock %}

{% block autoreconf %}
dash ./autogen.sh
{% endblock %}

{% block patch %}
sed -e 's| bind(| ::bind(|' -i src/network/network.cc
{% endblock %}