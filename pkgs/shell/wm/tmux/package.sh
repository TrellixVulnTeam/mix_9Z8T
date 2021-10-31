{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/tmux/tmux/releases/download/3.2a/tmux-3.2a.tar.gz
# md5 61fba141303aeaf8d9a6931d247f2f4a
{% endblock %}

{% block deps %}
# lib lib/curses/any/package.sh
# bld lib/event/package.sh
# bld lib/utf8proc/package.sh
# bld dev/build/make/package.sh
# bld dev/lang/byacc/package.sh
# bld dev/build/pkg-config/package.sh
# bld env/std/package.sh
{% endblock %}

{% block cflags %}
export COFLAGS=$(echo ${COFLAGS} | tr ' ' '\n' | grep -v 'static' | tr '\n' ' ')
{% endblock %}

{% block coflags %}
--enable-utf8proc
{% endblock %}
