{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url http://mandoc.bsd.lv/snapshots/mandoc-1.14.6.tar.gz
# md5 f0adf24e8fdef5f3e332191f653e422a
{% endblock %}

{% block deps %}
# bld lib/z/mix.sh
# bld dev/build/make/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block postconf %}
sed -e "s|/usr/local|${out}|" -i Makefile.local
{% endblock %}