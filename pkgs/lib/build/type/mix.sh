{% extends '//mix/template/hub.sh' %}

{% block lib_deps %}
lib/build/type/{{buildtype or 'release'}}/mix.sh
{% endblock %}
