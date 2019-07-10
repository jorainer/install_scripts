#!/bin/bash

# Modified script from Daniel, and from Jo, and _X.
# Changes:
#   - Installs it into the user's home/R directory...
#     no framework, with-cairo, enable R-shlib
#   - Don't download if tarball is already in cwd.
#   - Check for existing Makevars file and warn if present.
#   - Usage file.
#   - Options -h and --help.
#   - Paths are white space-safe.
#   - Use of variables instead of direct command line argument nr.
# usage: e.g. install-R-release.sh 3.0.1

# Execute it with sudo when installing to the system directories.
# e.g.: sudo ./install-R-release.sh 2.13.0

# Example:
# $ install-R-release.sh $HOME/progs/R/2017-12-21 devel

# Note:
# on macOS mojave /usr/include was removed. To re-add/install:
# $ sudo installer -pkg \
# $ /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg \
# $ -target /

# _X setup. Compilers as recommended from the R-project website:
# https://cran.r-project.org/bin/macosx/tools/
# Change as you like. Shoud also work with clang4.2 and gfortran-fsf-6
FORTRAN=/usr/local/gfortran/bin/gfortran
CLANG="/usr/local/opt/llvm@7/bin/clang"
CXXLANG="/usr/local/opt/llvm@7/bin/clang++"
CPPFLAGS="$CXXFLAGS -I/usr/local/opt/llvm@7/include -I/usr/local/include"
LDFLAGS="$LDFLAGS -L/usr/local/opt/llvm@7/lib -L/usr/local/lib"
## Clang 7.0 from R
# CLANG="/usr/local/clang7/bin/clang"
# CXXLANG="/usr/local/clang7/bin/clang++"
# CPPFLAGS="$CPPFLAGS -I/usr/local/local/clang7/include"
# LDFLAGS="-L/usr/local/clang7/lib"
## Clang 6
# CLANG="/usr/local/opt/llvm@6/bin/clang"
# CXXLANG="/usr/local/opt/llvm@6/bin/clang++"
# CPPFLAGS="$CPPFLAGS -I/usr/local/opt/llvm@6/include"
# LDFLAGS="-L/usr/local/opt/llvm@6/lib"
## Use GCC
##FORTRAN=/usr/local/opt/gcc@7/bin/gfortran-7
##CLANG=/usr/local/opt/gcc@7/bin/gcc-7
##CXXLANG=/usr/local/opt/gcc@7/bin/g++-7
##CPPFLAGS="-I/usr/local/opt/gcc@7/include -I/usr/local/include"
##LDFLAGS="-L/usr/local/opt/gcc@7/lib -L /usr/local/lib"
## For R-3.3.1:
##CPPFLAGS="-I/usr/local/Cellar/llvm/6.0.0/include -I/usr/local/opt/zlib/include"
##LDFLAGS="-L/usr/local/Cellar/llvm/6.0.0/lib -L/usr/local/opt/zlib/lib"


# Break on error.
set -e

function usage ()
{
   bn=$(basename $0)
   cat <<EOF
Usage: $bn version prefix
Install from source a certain version of R.
Options:
  version   R version to install. Any official R version such as R-3.4.2.
            Instead of a version string, any of the following possible
            keywords can be supplied:
              latest, latest official R version;
              devel, nightly R source tarball.
  prefix    [optional] Directory prefix for overall installation. This
            directory will be either created or deleted upon confirmation.
            It needs to be an absolute path.
EOF
}

# Check number of parameters.
if [ $# != 1 -a $# != 2 ]; then
    usage
    exit 1
fi

# See if we are asking for help.
if [ $1 = "-h" -o $1 = "--help" ]; then
   usage
   exit 0
fi

# What version do we want to download?
versionR=$1

# If a second argument is specified, this is used as prefix, otherwise
# we install to $HOME/R
[ -n "$2" ] && PREFIX="$2" || PREFIX="$HOME/R/$versionR"

if ! grep -E '^[[:space:]]*\/' <<<"$PREFIX" >/dev/null ; then
    echo "prefix=\"$PREFIX\" needs to be an absolute path." >&2
    exit 1
fi

# Possible extension: loop over all possible files, which can be found in the
# source code of /path/to/R/lib/R/bin/config.
makevarsfile="$HOME/.R/Makevars"
if [ -f "$makevarsfile" ] ; then
    echo "Detected file \"$makevarsfile\". This can potentially override settings that"
    echo "have been defined in this script, e.g. CC, CXX, FC, etc. It contains the"
    echo "following lines:"
    cat $makevarsfile
    read -p "Do you want to continue? [y/N] " cont
    [ x$cont != x"y" ] && exit 0
fi

echo "Retrieving R version \"$versionR\" and installing it to \"$PREFIX\"."

# download R
rtarball="R-$versionR.tar.gz"
if [ $versionR = "latest" ]; then
    echo "Downloading devel version $rtarball from http://cran.r-project.org/src/base-prerelease/"
    test -f $rtarball || curl -O http://cran.r-project.org/src/base-prerelease/$rtarball
elif [ $versionR = "devel" ]; then
    echo "Downloading devel version $rtarball from ftp://ftp.stat.math.ethz.ch/Software/R/"
    test -f $rtarball || curl -O https://stat.ethz.ch/R/daily/$rtarball
else
    arr=(${versionR//./ })
    mainV=${arr[0]}
    echo "Downloading $rtarball from http://cran.r-project.org/src/base/R-$mainV/"
    test -f $rtarball || curl -O http://cran.r-project.org/src/base/R-$mainV/$rtarball
fi

# unpack R source
echo "Unpacking $rtarball..."
if ! tar fxz $rtarball ; then
    echo "Problems unpacking the tarball. Correct version?" >&2
    exit 1
fi

# changing to the unpacked sources
if [ $versionR = "latest" ]; then
    cd R-rc
elif [ $versionR = "beta" ]; then
    cd R-beta
else
    cd R-$versionR
fi

# Configure installation to 64 bit using x11
./configure SHELL='/bin/bash' \
    --prefix="$PREFIX" \
    --x-includes=/usr/X11/include/ \
    --x-libraries=/usr/X11/lib/ \
    --enable-R-shlib \
    --with-blas='-framework Accelerate' \
    --with-lapack \
    CC="$CLANG" \
    CXX="$CXXLANG" \
    OBJC="$CLANG" \
    F77="$FORTRAN" \
    FC="$FORTRAN" \
    CPPFLAGS="$CPPFLAGS" \
    LDFLAGS="$LDFLAGS" \
    --enable-R-framework=no \
    --enable-memory-profiling \
    --disable-openmp

    # r_arch="x86_64" \

##
read -p "Press [Enter] key to start compilation..."
# build R
echo "building R"
make -j4

read -p "Press [Enter] key to check build and install..."
make -j2 check

# Make sure we delete any existing dir.
if [ -d "$PREFIX" ]; then
    echo "Another R-version exists already in \"$PREFIX\"."
    read -p "Press [Enter] to delete the old version and proceed with installation..."
    rm -Rf "$PREFIX"
fi

make install

# Deleting the build directory.
cd ..
if [ -d R-$versionR ]; then
    rm -R R-$versionR
fi
# In case we downloaded the latest.
if [ -d R-patched ]; then
    rm -R R-patched
fi

echo "Installation completed."
