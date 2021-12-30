{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.11.3.tar.gz
c7016b513f701d88c70b3082eb183581
{% endblock %}

{% block bld_libs %}
lib/c
lib/intl
lib/edit
lib/iconv
{% endblock %}

{% block setup %}
{% if target.os == 'darwin' %}
export CPPFLAGS="-Dstat64=stat ${CPPFLAGS}"
{% endif %}
{% endblock %}

{% block invoke_configure %}
dash configure --prefix="${out}" --with-libedit=yes
{% endblock %}