{% extends '//mix/meson.sh' %}

{% block fetch %}
https://github.com/ebassi/graphene/archive/refs/tags/1.10.8.tar.gz
sha:922dc109d2dc5dc56617a29bd716c79dd84db31721a8493a13a5f79109a4a4ed
{% endblock %}

{% block lib_deps %}
lib/c
lib/glib
{% endblock %}
