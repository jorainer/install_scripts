#!/bin/sh
echo "That's a nice script that installs Homebrew on Mac with all required packages needed for heavy bioinformatic work\n\n"
echo "Installing brew:\n"

echo 'We are assuming that brew has been installed using ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" followed by "brew doctor".\n All issues raised by "brew doctor" should be fixed prior to further installations!\n\n'

read -p "Press [Enter] to start installation..."

echo "Setting up repositories:\n"
## brew tap nwoolls/xgminer
brew tap homebrew/science

## system tools
echo "________________________________________________________________________________"
echo "Installing system tools:\n"
## note: have to install gcc instead of gfortran; gfortran has been added to this bottle
## Update: don't use the gcc/gfortran, but download gfortran from:
## https://cran.r-project.org/bin/macosx/tools/
## or directly from https://gcc.gnu.org/wiki/GFortranBinaries#MacOS
## compilers and dev tools
brew install autoconf automake
brew install readline glib
## brew install gcc
brew install curl wget git git-extras git-lfs svn cvs hub
brew install libxml2 libxml++
brew install terminal-notifier
brew install ctags gettext udunits cmake
## system tools
brew install mc
brew install htop fping
brew install sshfs
brew install unrar
## graphics tools
brew install cairo cairomm gtk+ gtkmm graphviz
brew install gtk+3 gtkmm3 pango pangomm
brew install libpng png++ libtiff giflib
brew install libsvg libsvg-cairo
brew install swig jpeg
brew install imagemagick
## other stuff
brew install aspell --with-lang-de --with-lang-en
brew install valgrind expat
brew install librsvg
brew install pandoc pandoc-citeproc
brew install cask
brew install markdown
brew install fping
brew install qpdf
brew install texinfo
echo 'export PATH="/usr/local/opt/texinfo/bin:$PATH"' >> ~/.bash_profile
brew install texi2html
brew install carthage
echo "\n\nDone\n\n"
echo "________________________________________________________________________________"

echo "Installing databases:\n"
brew install mysql
brew install sqlite
## start mysql: mysql.server restart
## mysql_secure_installation
## unset TMPDIR
## mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
## mysql.server restart

echo "\n\nDone\n\n"

## Perl stuff
echo "________________________________________________________________________________"
echo "Installing Perl\n"
curl -L http://install.perlbrew.pl | bash
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.profile
source ~/.profile
perlbrew install perl-5.18.2
perlbrew switch perl-5.18.2
## perlbrew install stable
perlbrew install-cpanm
cpanm --local-lib=~/perl5 local::lib && eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)
cpanm Config::Simple
cpanm Array::Compare
cpanm Parallel::ForkManager
cpanm Getopt::Std
cpanm Carp
cpanm Carp::Assert
cpanm Carp::Clan
cpanm DBI
cpanm DBI::DBD
cpanm --force Class::DBI::mysql
cpanm --force DBD::mysql
cpanm --notest Cairo
cpanm --notest Gtk2
cpanm Class::Base
cpanm Class::DBI
##cpanm Class::Errorhandler
cpanm Compress::Bzip2
cpanm Exception::Class
cpanm Getopt::Simple
cpanm IO::Stringy
cpanm BioPerl
cpanm Sort::Naturally
cpanm --force Tk
cpanm List::MoreUtils
cpanm Exporter::Tiny

echo "\n\nDone\n\n"

## Python stuff
echo "________________________________________________________________________________"
echo "Installing python:\n"
brew install python
pip install --upgrade setuptools
pip install --upgrade pip
pip install numpy
pip install pyserial
pip install pygments-style-solarized
echo "\n\nDone\n\n"

# ## other stuff:
# echo "________________________________________________________________________________"
# echo "Installing mining related things:\n"
# brew install bfgminer --HEAD
# echo "\n\nDone\n\n"

## multimedia stuff:
echo "________________________________________________________________________________"
echo "Installing multimedia stuff:\n"
brew tap mpv-player/mpv
brew install --HEAD mpv-player/mpv/libass-ct
brew install --HEAD --with-bundle --with-bluray-support --with-libdvdread --with-libquvi --with-little-cms2 --with-lua mpv
echo "\n\nDone\n\n"

## packages for bioconductor/bioinfo stuff
echo "________________________________________________________________________________"
echo "Installing bioinfo stuff:\n"
brew install bamtools bamutil hdf5 exonerate arpack
brew install netcdf sratoolkit samtools
brew install bedtools
brew install enblend-enfuse
## brew install blast
## brew install openblas  ## that's the question. vecLib from Apple provideslo as good if not faster BLAS and LAPACK
## not working: viennarna
echo "\n\nDone\n\n"
echo "\-----------------------------------------------\n"
echo "\nCongratulations!\n"
echo "At last you should install MacTex from http://www.tug.org/mactex\n"



brew linkapps



