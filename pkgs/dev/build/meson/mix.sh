{% extends '//mix/template/std.sh' %}

{% block fetch %}
https://github.com/mesonbuild/meson/archive/refs/tags/0.60.2.tar.gz
a5d6cfcf776e145f2054d5eefb4bc110
{% endblock %}

{% block bld_tool %}
gnu/patch/mix.sh
{% endblock %}

{% block std_env %}
env/std/0/mix.sh
{% endblock %}

{% block run_deps %}
dev/build/python/mix.sh
{% endblock %}

{% block build %}
cd ${out}

(
    ${untar} ${src}/0*

    ln -s meson* meson
    mkdir bin && cd bin
    ln -s ../meson/meson.py ./meson
)

(
    cd meson

    patch -p1 << EOF
{% include '00.diff' %}
EOF
)
{% endblock %}

{% block touch_yl %}
{% endblock %}
