export CPPFLAGS="-DNDEBUG -U__SSE2__ -I$out/include/c++/v1 $CPPFLAGS"
ln -s $(which dash) sh
export PATH="$(pwd):$PATH"

build_cmake_ninja -DLIBUNWIND_ENABLE_SHARED=NO -DLIBUNWIND_ENABLE_STATIC=YES ../libunwind
export LIBS="$out/lib/libunwind.a $LIBS"

build_cmake_ninja -DLIBCXX_ENABLE_SHARED=NO -DLIBCXX_ENABLE_STATIC=YES -DLIBCXX_CXX_ABI=libcxxabi -DLIBCXX_USE_COMPILER_RT=yes ../libcxx
export LIBS="$out/lib/libc++.a $LIBS"

build_cmake_ninja -DLIBCXXABI_ENABLE_SHARED=NO -DLIBCXXABI_ENABLE_STATIC=YES -DLIBCXXABI_LIBCXX_INCLUDES="$out/include/c++/v1" ../libcxxabi
export LIBS="$out/lib/libc++abi.a $LIBS"
