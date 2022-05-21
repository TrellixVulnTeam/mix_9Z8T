{% extends 'meson.sh' %}

{% block std_box %}
bld/glib/codegen
bld/scripts/gnome
{{super()}}
{% endblock %}

{% block step_install %}
{% if bin %}
{{hooks.install_glib_schemas()}}
{% endif %}
{{super()}}
{% endblock %}
