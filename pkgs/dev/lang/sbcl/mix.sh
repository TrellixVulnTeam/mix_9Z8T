{% extends '//dev/lang/sbcl/boot/mix.sh' %}

{% block boot_lisp_dep %}
dev/lang/sbcl/boot/mix.sh
{% endblock %}

{% block boot_lisp %}
sbcl
{% endblock %}
