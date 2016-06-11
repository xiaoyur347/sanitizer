#!/bin/sh
#STEP1: copy mpc mpfr gmp to src
#STEP2: modify configure.tgt to enable MIPS support
#STEP3: modify libsanitizer/sanitizer_common/Makefile.in DEFS and add -D__UCLIBC__, optionally add -gdwarf-2
setarch i386 ../configure --target=mipsel-linux-uclibc --enable-multilib --prefix=/opt/stbgcc-6.1.0 --with-sysroot=/opt/stbgcc-6.1.0/mipsel-linux-uclibc/sys-root --enable-threads=posix --enable-long-long --enable-c99 --enable-__cxa_atexit --disable-nls --enable-symvers=gnu --enable-languages=c,c++ --enable-target-optspace --with-pkgversion='stbgcc-6.1.0' --with-host-libstdcxx='-Wl,-Bstatic,-lstdc++,-Bdynamic -lm' --with-mips-plt --with-arch=mips32 --with-float=hard CC='gcc -m32' CXX='g++ -m32'
