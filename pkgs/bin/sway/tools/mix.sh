{% extends '//bin/sway/t/mix.sh' %}

{% block meson_flags %}
{{super()}}
tray=enabled
swaybar=true
swaynag=true
{% endblock %}

{% block install %}
{{super()}}
cd ${out}
rm -r etc share
rm bin/sway
{% endblock %}
