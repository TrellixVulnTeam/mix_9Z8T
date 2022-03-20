{% extends '//lib/jack/2/t/mix.sh' %}

{% block bld_libs %}
lib/alsa
lib/readline
{{super()}}
{% endblock %}

{% block waf_flags %}
--alsa=yes
--readline=yes
{{super()}}
{% endblock %}

{% block patch %}
(base64 -d | patch -p1) << EOF
{% include '0.diff/base64' %}
EOF
{{super()}}
{% endblock %}

{% block install %}
{{super()}}
cd ${out}
mv bin old
mkdir bin
mv old/jackd bin/
rm -r old
{% endblock %}
