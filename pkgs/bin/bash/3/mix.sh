{% extends '//bin/bash/t/mix.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/bash/bash-3.2.57.tar.gz
237a8767c990b43ae2c89895c2dbc062
{% endblock %}

{% block bld_libs %}
lib/c
lib/intl
lib/iconv
lib/curses
lib/readline
{{super()}}
{% endblock %}

{% block bld_tool %}
bin/byacc
bin/texinfo
{% endblock %}

{% block patch %}
rm y.tab* lib/intl/plural.c
{{super()}}
{% endblock %}

{% block configure_flags %}
{{super()}}
--with-installed-readline
--enable-readline
--with-curses
{% endblock %}

{% block install %}
{{super()}}
cd ${out}; mv info share/
{% endblock %}
