{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/wget/wget-1.21.2.tar.lz
2703828579552a5a6749fadfb1bf305d
{% endblock %}

{% block bld_deps %}
lib/intl/mix.sh
lib/pcre2/mix.sh
lib/gnutls/mix.sh
lib/metalink/mix.sh
{{super()}}
{% endblock %}