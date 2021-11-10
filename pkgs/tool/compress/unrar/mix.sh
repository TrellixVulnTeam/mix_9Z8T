{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://storage.yandexcloud.net/mix-cache/unrarsrc-6.0.6.tar.gz
4c89e2e5ecfe72a9d96478fb80f38c34
{% endblock %}

{% block bld_deps %}
lib/c++/mix.sh
{{super()}}
{% endblock %}

{% block make_flags %}
-f makefile
{% endblock %}

{% block install %}
mkdir -p ${out}/bin
install -v -m755 unrar ${out}/bin/
{% endblock %}
