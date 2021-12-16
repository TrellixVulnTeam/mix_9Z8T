{% extends '//mix/template/base.sh' %}

{% block functions %}
{% include 'functions.sh' %}
{% endblock %}

{% block unpack %}
{% include 'unpack.sh' %}
{% endblock %}

{% block step_setup %}
{% include 'setup.sh' %}
{% endblock %}

{% block step_install %}
{% include 'install.sh' %}
{% endblock %}

{% block std_env %}
{% block std_box %}
{% include 'stdenv.sh' %}
{% endblock %}
{% endblock %}

{% block step_test %}
{% block test %}
{% include 'test.sh' %}
{% endblock %}
{% endblock %}
