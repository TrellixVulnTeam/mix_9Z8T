{% extends '//mix/template/proxy.sh' %}

{% block deps %}
# bld lib/xz/mix.sh
# bld env/tools/mix.sh
{% endblock %}

{% block install %}
cd ${out} && cp -R $(dirname $(command -v xz)) ./
{% endblock %}