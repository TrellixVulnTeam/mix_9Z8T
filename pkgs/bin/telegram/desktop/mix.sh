{% extends '//mix/hub.sh' %}

{% block run_deps %}
bin/telegram/desktop/unwrap(allocator=tcmalloc)
{% endblock %}