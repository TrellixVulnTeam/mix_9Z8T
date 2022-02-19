{% extends '//mix/c_std.sh' %}

{% block fetch %}
{% include '//lib/llvm/13/ver.sh' %}
{% endblock %}

{% block lib_deps %}
lib/c/naked
{% endblock %}

{% block std_box %}
bld/bootbox
{% endblock %}

{% block unpack %}
{{super()}}
cd compiler-rt
{% endblock %}

{% block patch %}
rm lib/builtins/atomic*
{% endblock %}

{% block build %}
for x in lib/builtins/*.c; do
    cc -c ${x}
done

ar qs libcompiler_rt.a *.o
{% endblock %}

{% block install %}
mkdir ${out}/lib && cp libcompiler_rt.a ${out}/lib/
{% endblock %}
