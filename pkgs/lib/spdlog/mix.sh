{% extends '//mix/template/cmake.sh' %}

{% block fetch %}
# url https://github.com/gabime/spdlog/archive/refs/tags/v1.8.5.tar.gz
# md5 8755cdbc857794730a022722a66d431a
{% endblock %}

{% block deps %}
# lib lib/cxx/mix.sh
# bld dev/build/cmake/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block env %}
export CMFLAGS="-DSPDLOG_INCLUDE_DIR=${out}/include \${CMFLAGS}"
{% endblock %}