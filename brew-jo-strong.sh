#!/bin/sh
echo "That's a nice script that installs Homebrew on Mac with all required packages needed for heavy bioinformatic work\n\n"
echo "Installing brew:\n"

echo 'We are assuming that brew has been installed using ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" followed by "brew doctor".\n All issues raised by "brew doctor" should be fixed prior to further installations!\n\n'

read -p "Press [Enter] to start installation..."

echo "Setting up repositories:\n"
## brew tap nwoolls/xgminer
brew tap homebrew/science
## brew tap d12frosted/emacs-plus

echo "________________________________________________________________________________"
echo "Installing and configuring zsh:\n"
brew install zsh zsh-completions
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
ln -s "$HOME/.zprezto/runcoms/zlogin" "$HOME/.zlogin" 
ln -s "$HOME/.zprezto/runcoms/zlogout" "$HOME/.zlogout"
ln -s "$HOME/.zprezto/runcoms/zpreztorc" "$HOME/.zpreztorc"
ln -s "$HOME/.zprezto/runcoms/zprofile" "$HOME/.zprofile"
ln -s "$HOME/.zprezto/runcoms/zshenv" "$HOME/.zshenv"
ln -s "$HOME/.zprezto/runcoms/zshrc" "$HOME/.zshrc"
## General stuff to the zsh:
echo "export PATH=$HOME/bin:$PATH" >> "$HOME/.zshrc"
echo "export CLICOLOR=1" >> "$HOME/.zshrc"
echo "export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx" >> "$HOME/.zshrc"
echo "export LC_CTYPE=en_US.UTF-8" >> "$HOME/.zshrc"
echo "export LC_ALL=en_US.UTF-8" >> "$HOME/.zshrc"
echo "export tz=CET" >> "$HOME/.zshrc"
echo "export TZ=CET" >> "$HOME/.zshrc"
echo "alias R='R --no-save'" >> "$HOME/.zshrc"


# git clone https://github.com/seebi/dircolors-solarized "${ZDOTDIR:-$HOME}/.zprezto/contrib/dircolors-solarized/"
# echo "eval \`dircolors ~/.zprezto/contrib/dircolors-solarized/dircolors.256dark\`" >> "$HOME/.zshrc"

## system tools
echo "________________________________________________________________________________"
echo "Installing system tools:\n"
## note: have to install gcc instead of gfortran; gfortran has been added to this bottle
## Update: don't use the gcc/gfortran, but download gfortran from:
## https://cran.r-project.org/bin/macosx/tools/
## or directly from https://gcc.gnu.org/wiki/GFortranBinaries#MacOS
## compilers and dev tools
brew install llvm
brew install autoconf automake
brew install readline glib
## brew install gcc
brew install curl wget git git-extras git-lfs svn hub libgit2
brew install libxml2 libxml++
brew install terminal-notifier
brew install ctags gettext udunits cmake
## system tools
brew install mc
brew install tree
brew install htop fping
brew install sshfs
brew install unrar
## brew install emacs-plus
brew install imagemagick@6
##brew install emacs --HEAD --with-cocoa --with-imagemagick@6 --with-gnutls --with-rsvg
brew install emacs --with-cocoa --with-imagemagick@6 --with-gnutls --with-rsvg
brew linkapps emacs
echo 'export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"' >> ~/.zshrc
## graphics tools
brew install cairo cairomm gtk+ gtkmm graphviz
brew install gtk+3 gtkmm3 pango pangomm
brew install libpng png++ libtiff giflib
brew install libsvg libsvg-cairo
brew install swig jpeg
brew install ffmpeg --with-fdk-aac
## brew install imagemagick
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
echo 'export PATH="/usr/local/opt/texinfo/bin:$PATH"' >> ~/.zshrc
brew install gnutls
brew install texi2html
brew install carthage
brew install awscli
echo "\n\nDone\n\n"
echo "________________________________________________________________________________"

echo "Installing databases:\n"
brew install mysql@5.6
## brew link --force mysql@5.6
echo 'export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"' >> ~/.zshrc
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
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.bash_profile
echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.zshrc
source ~/.bash_profile
perlbrew install-patchperl
# perlbrew --notest install perl-5.18.2
# perlbrew switch perl-5.18.2
perlbrew --notest install perl-5.18.0
perlbrew switch perl-5.18.0
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
brew unlink python && brew link python
## wget https://bootstrap.pypa.io/get-pip.py
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

echo "\n\n -- you might also want to change the default shell to zsh:\n"
echo " 1) Add /usr/local/bin/zsh to /etc/shells"
echo " 2) change the shell with chsh -s /usr/local/bin/zsh"

brew linkapps


echo "Addendum: cloning OSX Terminal color schemes"
mkdir -p "$HOME/Projects/git/"
cd "$HOME/Projects/git/"
git clone https://github.com/lysyi3m/osx-terminal-themes

echo "You might select on of the terminal osx themes, e.g. Neutron"


