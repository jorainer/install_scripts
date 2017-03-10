## modified script form Daniel,
## changes:
## installs it into the user's home/R directory...
## no framework
## with-cairo
## enable R-shlib
## usage: e.g. install-R-release.sh 3.0.1
# this script should be executed using sudo
# e.g.: sudo ./install-R-release.sh 2.13.0

string=$1

## if a second argument is specified, this is used as prefix...
if [ -n "$2" ]; then
    PREFIX="$2"
else
    PREFIX="/Users/jo/R/$1"
fi

echo "Fetching R version $1 and installing it to $PREFIX ."

# check imput
arr=(${string//./ })

mainV=${arr[0]}
## PREFIX="/Users/jo/R/$1"

if [ $1 = "latest" ]; then
    echo "Downloading devel version R-$1.tar.gz from http://cran.r-project.org/src/base-prerelease/R-$1.tar.gz"
    curl -O http://cran.r-project.org/src/base-prerelease/R-$1.tar.gz
elif [ $1 = "devel" ]; then
    echo "Downloading devel version R-$1.tar.gz from ftp://ftp.stat.math.ethz.ch/Software/R/"
    curl -O https://stat.ethz.ch/R/daily/R-$1.tar.gz
else
    # download R
    echo "Downloading R-$1.tar.gz from http://cran.r-project.org/src/base/R-$mainV/R-$1.tar.gz"
    curl -O http://cran.r-project.org/src/base/R-$mainV/R-$1.tar.gz
fi

# unpacking R source
echo "Unpacking R-$1.tar.gz"
tar fxz R-$1.tar.gz

# changing to the unpacked sources
if [ $1 = "latest" ]; then
    cd R-alpha
elif [ $1 = "beta" ]; then
    cd R-beta
else
    cd R-$1
fi

# Configure installation to 64 bit using x11
arch=x86_64
## using now on Mac clang and clang++ instead of gcc and g++
./configure SHELL='/bin/bash' \
	    --prefix=$PREFIX \
	    r_arch=x86_64 \
	    --enable-R-shlib \
	    CC="clang" \
	    CXX="clang++" \
	    OBJC="clang" \
	    F77="gfortran -arch x86_64" \
	    FC="gfortran -arch x86_64" \
	    CPPFLAGS="-D__ACCELERATE__" \
	    --enable-R-framework=no \
	    --enable-memory-profiling

#	    --with-blas='-framework Accelerate' \
#	    --with-lapack \
#	    --with-valgrind-instrumentation=2 \
#	    --x-includes=/usr/X11/include/ \
#	    --x-libraries=/usr/X11/lib/ \
#	    CPPFLAGS="-D__ACCELERATE__ -I/usr/local/opt/sqlite/include" \
#	    LDFLAGS="-L/usr/local/opt/sqlite/lib" \
#	    CPPFLAGS="-D__ACCELERATE__ -I/usr/local/opt/sqlite/include" \
#	    LDFLAGS="-L/usr/local/opt/sqlite/lib" \

#	    --with-blas='-framework Accelerate' \
#	    --with-lapack \
#	    CPPFLAGS="-D__ACCELERATE__ -I/usr/local/opt/sqlite/include" \
#	    LDFLAGS="-L/usr/local/opt/sqlite/lib" \
#	    --enable-memory-profiling \


## old options
##	    --enable-R-shlib \
##	    --enable-BLAS-shlib \
##	    --with-system-zlib \

##
read -p "Press [Enter] key to start compilation..."
# build R
echo "building R"
make -j4

read -p "Press [Enter] key to check build and install..."
make check

## make sure we delete any existing dir.
if [ -d $PREFIX ]; then
    read -p "Another R-version exists already in $PREFIX. Press [Enter] to delete the old version and proceed with installation..."
    rm -Rf $PREFIX
fi

make install

## deleting the install
cd ..
if [ -d R-$1 ]; then
    rm -R R-$1
fi
## in case we downloaded the latest.
if [ -d R-patched ]; then
    rm -R R-patched
fi

## that below would be with an openBLAS instead of the vecLib.
# ## what remains: install openBLAS
# OPENBLAS_PREFIX=/Users/jo/OpenBLAS
# read -p "Press [Enter] key to fetch and install openBLAS..."
# cd /tmp
# git clone https://github.com/xianyi/OpenBLAS.git
# cd OpenBLAS
# make
# make PREFIX=$OPENBLAS_PREFIX install
# ## symlink the newly installed openBLAS to R's blas.
# mv $PREFIX/lib/R/lib/x86_64/libRblas.dylib $PREFIX/lib/R/lib/x86_64/libRblas.dylib.orig
# ln -s $OPENBLAS_PREFIX/lib/libopenblas.dylib $PREFIX/lib/R/lib/x86_64/libRblas.dylib
# cd ..
# rm -Rf OpenBLAS

echo "Installation  completed"
