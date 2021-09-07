# dep lib/intl lib/iconv lib/sigsegv dev/build/make env/c boot/final/env
{% include 'version.sh' %}

build() {
    $untar $src/grep-* && cd grep-*

    dash ./configure $COFLAGS --prefix=$out
    make -j $make_thrs
    make install
}
