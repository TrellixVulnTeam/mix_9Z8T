{% extends '//mix/template/make.sh' %}

{% block fetch %}
# url https://github.com/onetrueawk/awk/archive/c0f4e97e4561ff42544e92512bbaf3d7d1f6a671.zip
# md5 8fd8db2c605c68fc1d90391b95336e3b
{% endblock %}

{% block deps %}
# bld dev/lang/bison/3.7.6/package.sh
# bld dev/build/make/package.sh
# bld env/std/package.sh
{% endblock %}

{% block install %}
mkdir ${out}/bin && cp a.out ${out}/bin/nawk
{% endblock %}
