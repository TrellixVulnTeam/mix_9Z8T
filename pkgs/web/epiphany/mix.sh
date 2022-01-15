{% extends '//mix/template/meson.sh' %}

{% block fetch %}
https://gitlab.gnome.org/GNOME/epiphany/-/archive/41.3/epiphany-41.3.tar.bz2
sha:c4545d5e7ef4efd39964cac3ee680b5a238207b95f5f6c8ab747292303654b12
{% endblock %}

{% block bld_libs %}
web/epiphany/libs(gtk_ver=3)
{% endblock %}

{% block bld_tool %}
lib/glib
gnu/gettext
dev/build/meson/better
{% endblock %}

{% block run_data %}
misc/iso-codes
{% endblock %}

{% block run_deps %}
dev/tool/sh
lib/webkit/webproc(gtk_ver=3)
{% endblock %}

{% block meson_flags %}
libportal=disabled
unit_tests=disabled
soup2=disabled
{% endblock %}

{% block patch %}
sed -e 's|.*subdir.*help.*||' \
    -e 's|.*add_install_script.*||' \
    -i meson.build

(
    find . -name '*.c' | while read l; do
        cat ${l}
    done
) | grep '_class_init' \
  | sed -e 's|_class_init.*|_get_type|' \
  | sort | uniq \
  | grep -v ephy_search_provider_get_type \
  | grep -v ephy_web_overview_model_get_type \
  | grep -v ephy_web_process_extension_get_type \
  > types

(
    echo 'void g_object_init();'

    cat types | while read l; do
        echo "GType ${l}(void);"
    done

    cat << EOF
__attribute__((constructor))
static void premain_init_types() {
    g_object_init();
EOF

    cat types | while read l; do
        echo "${l}();"
    done

    echo '}'
) >> src/ephy-main.c
{% endblock %}

{% block install %}
{{super()}}

cd ${out}/bin

mv epiphany epiphany-unwrapped

cat << EOF > epiphany
#!$(which sh)
export WEBKIT_EXEC_PATH="\$(dirname \$(which WebKitWebProcess))"
exec "${out}/bin/epiphany-unwrapped" "\$@"
EOF

chmod +x epiphany
{% endblock %}
