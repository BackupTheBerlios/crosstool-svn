#!/bin/sh
set -ex
TARBALLS_DIR=$HOME/downloads
RESULT_TOP=/opt/crosstool
export TARBALLS_DIR RESULT_TOP
GCC_LANGUAGES="c,c++"
export GCC_LANGUAGES

# Really, you should do the mkdir before running this,
# and chown /opt/crosstool to yourself so you don't need to run as root.
mkdir -p $RESULT_TOP

# Build the toolchain.  Takes a couple hours and a couple gigabytes.
#eval `cat m68k.dat gcc-3.3-glibc-2.3.2.dat`          sh all.sh --notest
#eval `cat m68k.dat gcc-3.3.2-glibc-2.3.2.dat`        sh all.sh --notest
 eval `cat m68k.dat gcc-3.3.3-glibc-2.3.2.dat`        sh all.sh --notest
#eval `cat m68k.dat gcc-3.4.0-glibc-2.3.2.dat`        sh all.sh --notest
#eval `cat m68k.dat gcc-3.4.1-glibc-2.3.3.dat`        sh all.sh --notest
#eval `cat m68k.dat gcc-3.4.1-glibc-20040827.dat`     sh all.sh --notest

echo Done.
