{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/gnu/tar/tar-1.34.tar.xz
# md5 9a08d29a9ac4727130b5708347c0f5cf
{% endblock %}

{% block deps %}
# bld lib/z lib/xz lib/intl lib/bzip2 lib/iconv dev/build/make env/std
{% endblock %}