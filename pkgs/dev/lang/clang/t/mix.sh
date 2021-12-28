{% extends '//lib/llvm/t/mix.sh' %}

{% block bld_libs %}
lib/c
{% if target.os == 'linux' %}
lib/linux
{% endif %}
{% if target.os == 'darwin' %}
lib/darwin/framework/CoreFoundation
{% endif %}
lib/z
lib/c++
lib/compiler_rt/builtins
{% endblock %}

{% block ind_deps %}
dev/lang/clang/lib
{% endblock %}

{% block cmake_flags %}
{{super()}}
LLVM_ENABLE_TERMINFO=OFF
LLVM_ENABLE_PROJECTS="clang;lld;polly"
CLANG_ENABLE_STATIC_ANALYZER=OFF
CLANG_ENABLE_ARCMT=OFF
{% endblock %}

{% block cmake_srcdir %}
llvm
{% endblock %}

{% set targets %}
clang
clang-cmake-exports
clang-resource-headers

lld
lld-cmake-exports

dsymutil

llvm-ar
llvm-as
llvm-install-name-tool
llvm-libtool-darwin
llvm-lipo
llvm-nm
llvm-objcopy
llvm-objdump
{% endset %}

{% block ninja_build_targets %}
{{targets}}
{% endblock %}

{% block ninja_install_targets %}
{% for t in mix.parse_list(targets) %}
install-{{t}}
{% endfor %}
{% endblock %}

{% block env %}
export CPPFLAGS="-isystem ${out}/share/include \${CPPFLAGS}"
{% endblock %}
