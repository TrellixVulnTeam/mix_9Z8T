{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/protocolbuffers/protobuf/archive/refs/tags/v3.19.1.tar.gz
e5cb6707320a077f0618b669d1856bc4
{% endblock %}

{% block lib_deps %}
lib/z/mix.sh
lib/c++/mix.sh
{% endblock %}

{% block bld_deps %}
dev/build/autoconf/2.69/mix.sh
dev/build/automake/1.16.3/mix.sh
{{super()}}
{% endblock %}

{% block autoreconf %}
dash ./autogen.sh
{% endblock %}