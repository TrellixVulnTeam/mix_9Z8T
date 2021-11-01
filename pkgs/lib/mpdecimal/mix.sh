{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://www.bytereef.org/software/mpdecimal/releases/mpdecimal-2.5.1.tar.gz
# md5 18599e4ffcfe8cd93e0efa8f14f027eb
{% endblock %}

{% block bld_deps %}
dev/build/make/mix.sh
env/std/mix.sh
{% endblock %}

{% block coflags %}
--enable-cxx=no
{% endblock %}