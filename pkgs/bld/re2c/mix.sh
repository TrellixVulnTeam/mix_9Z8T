{% extends '//die/hub.sh' %}

{% block run_deps %}
bin/re2c(std_box=bld/boot/box)
{% endblock %}
