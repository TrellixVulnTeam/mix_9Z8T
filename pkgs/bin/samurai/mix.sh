{% extends '//mix/make.sh' %}

{% block fetch %}
https://github.com/michaelforney/samurai/archive/edeec43d638c826d9e446917f97e95151988e0e0.zip
2321662d68a58456cc9ac9a2605beb59
{% endblock %}

{% block c_rename_symbol %}
warn
{% endblock %}

{% block bld_libs %}
lib/c
{% endblock %}
