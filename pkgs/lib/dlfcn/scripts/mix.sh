{% extends '//mix/template/proxy.sh' %}

{% block run_deps %}
dev/build/python/mix.sh
{% endblock %}

{% block install %}
mkdir ${out}/bin

base64 -d << EOF > ${out}/bin/gen_dl_stubs.py
{% include 'gen_dl_stubs.py/base64' %}
EOF
{% endblock %}
