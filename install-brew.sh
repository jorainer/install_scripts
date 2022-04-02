echo "Installing brew:\n"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

read -p "Press [Enter] to start installation..."

echo "Setting up repositories:\n"

## Repository for emacs-plus
brew tap d12frosted/emacs-plus
brew tap railwaycat/emacsmacport

## system tools
echo "__________________________________________________________________________"
echo "Installing system tools:\n"
## note: have to install gcc instead of gfortran; gfortran has been added to this bottle
## Update: don't use the gcc/gfortran, but download gfortran from:
## https://cran.r-project.org/bin/macosx/tools/
## or directly from https://gcc.gnu.org/wiki/GFortranBinaries#MacOS
## compilers and dev tools
brew install autoconf automake
brew install readline glib
## brew install gcc
brew install curl wget git git-extras git-lfs svn hub libgit2
brew install libxml2 libxml++
## brew install terminal-notifier
brew install ctags gettext udunits cmake
## system tools
brew install mc ranger
brew install tree
brew install htop fping
## brew install sshfs
brew install unrar
brew install imagemagick@6
export LIBXML2_CFLAGS="-I/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/libxml2"
brew install  --build-from-source emacs-plus --with-modern-orange-icon
brew services start d12frosted/emacs-plus/emacs-plus@27
brew install  --build-from-source emacs-mac --with-rsvg --with-emacs-sexy-icon --with-imagemagick
brew install editorconfig
## graphics tools
brew install cairo cairomm gtk+ gtkmm graphviz
brew install gtk+3 gtkmm3 pango pangomm
brew install libpng png++ libtiff giflib
brew install libsvg libsvg-cairo
brew install swig jpeg
brew install ffmpeg --with-fdk-aac
## other stuff
brew install aspell --with-lang-de --with-lang-en
brew install librsvg
brew install pandoc pandoc-citeproc
brew install markdown
brew install fping
brew install qpdf
brew install texinfo
echo 'export PATH="/usr/local/opt/texinfo/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/texinfo/bin:$PATH"' >> ~/.zshrc
brew install gnutls
brew install carthage
brew install awscli
brew install openssl@3
echo "\n\nDone\n\n"

echo "__________________________________________________________________________"
echo "Installing databases:\n"
brew install mariadb
echo 'export PATH="/usr/local/opt/mariadb@10.0/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/mariadb@10.0/bin:$PATH"' >> ~/.zshrc
brew install sqlite
echo "\n\nDone\n\n"

## multimedia stuff:
echo "__________________________________________________________________________"
echo "Installing multimedia stuff:\n"
brew tap mpv-player/mpv
brew install --HEAD mpv-player/mpv/libass-ct
brew install --HEAD --with-bundle --with-bluray-support --with-libdvdread --with-libquvi --with-little-cms2 --with-lua mpv
echo "\n\nDone\n\n"

## packages for bioconductor/bioinfo stuff
echo "__________________________________________________________________________"
echo "Installing bioinfo stuff:\n"
brew install netcdf hdf5
## brew install sratoolkit samtools bamtools bamutil exonerate arpack
## brew install bedtools
## brew install blast
## brew install openblas  ## that's the question. vecLib from Apple provideslo as good if not faster BLAS and LAPACK
echo "\n\nDone\n\n"

echo "__________________________________________________________________________"
echo "Installing apps:\n"
brew install firefox
brew install gimp
brew install skim
brew install zotero
brew install vlc
brew install plex-media-player
brew install plexamp
brew install phoenix-slides
brew install avidemux
brew install handbrake
brew install astropad
brew install mediathekview
brew install transmission
brew install alfred
brew install macpass
brew install ubersicht
brew install xscreensaver
brew install macs-fan-control

brew install java
brew install vmware-fusion
brew install xquartz
## brew cask install tuxera-ntfs
brew install paragon-extfs
## That has to be installed manually!!!
## brew cask install osxfuse
brew install hma-pro-vpn
brew install microsoft-office
brew install menubar-stats
brew install owncloud
brew install docker
brew install docker-toolbox
brew install slack
brew install hugin
brew install rstudio
echo "\n\nDone\n\n"
echo "\-----------------------------------------------\n"
