{% extends 'c_std.sh' %}

{% block std_box %}
dev/build/ninja
{{super()}}
{% endblock %}

{% set ninja_build_dir %}{% block ninja_build_dir %}${tmp}/obj{% endblock %}{% endset %}

{% set ninja_build_targets %}
{% block ninja_build_targets %}
{% endblock %}
{% endset %}

{% set ninja_install_targets %}
{% block ninja_install_targets %}
install
{% endblock %}
{% endset %}

{% block build %}
ninja -C {{ninja_build_dir}} -j ${make_thrs} {{mix.fix_list(ninja_build_targets)}}
{% endblock %}

{% block install %}
ninja -C {{ninja_build_dir}} {{mix.fix_list(ninja_install_targets)}}
{% endblock %}
