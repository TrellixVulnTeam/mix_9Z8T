{% extends '//mix/template/std/mix.sh' %}

{% block fetch %}
https://files.pythonhosted.org/packages/be/d0/bf4e7003369c6d8a6e490741c54791c7918d9ef10b56aec201e76706f1d7/SCons-4.1.0.post1.tar.gz
2b1daf6c83e467ae41c742f546c2fe5a
{% endblock %}

{% block run_deps %}
dev/tool/python
{% endblock %}

{% block install %}
cd ${out}; mkdir bin; cd bin

extract1 ${src}/SCons*

cat << EOF > scons
#!$(which sh)
PYTHONPATH=${PWD} python3 ${PWD}/SCons/__main__.py "\$@"
EOF

chmod +x scons
{% endblock %}