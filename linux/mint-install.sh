## That's the installation script for linux mint.
echo "Installing system tools"
apt-get -y install mc
apt-get -y install htop
apt-get -y install cifs-utils dosfstools mtools ntfs-3g hfsutils macutils

echo "Installing desktop system"
apt-get -y install agenda.app
apt-get -y install batman.app
apt-get -y install cynthiune.app
apt-get -y install gnustep gnustep-devel
apt-get -y install gnustep-common
apt-get -y install gnustep-icons
apt-get -y install gworkspace-common gworkspace.app
apt-get -y install libwings3
apt-get -y install preview.app
apt-get -y install terminal.app
apt-get -y install textedit.app
apt-get -y install timemon.app
apt-get -y install viewpdf.app
apt-get -y install volumecontrol.app
apt-get -y install wmaker wmaker-data
apt-get -y install alltray
apt-get -y install wbar asmon wmcpuload wmifs wmmixer wmmemload wmnd wmnet
apt-get -y install wmweather
apt-get -y install mint-themes mint-x-icons mint-y-icons mint-y-theme
apt-get -y install light-theme
apt-get -y install gnome-icon-theme-* mate-themes oxygen-icon-theme
apt-get -y install fvwm fvwm-crystal fvwm-icons

apt-get -y install syslinux-themes-linuxmint-cinnamon
apt-get -y install cinnamon-themes

echo "Installing development tools"
apt-get -y install gcc
apt-get -y install gfortran
apt-get -y install graphviz
apt-get -y install perl
apt-get -y install python
apt-get -y install sqlite
apt-get -y install libxml2 libxml2-dev
apt-get -y install libreadline6 libreadline6-dev
apt-get -y install git-all gist
apt-get -y install netcdf-bin libnetcdf-dev
apt-get -y install libhdf5 libhdf5-dev
apt-get -y install imagemagick imagemagick-common libmagick++-dev
apt-get -y install perlbrew
apt-get -y install cmake automake autotools-dev pkgconf autoconf
apt-get -y install g++ gcj-jdk gobjc
apt-get -y install emacs


echo "Installing productivity tools"
apt-get -y install texlive-full
apt-get -y install texify texi2html
apt-get -y install pandoc pandoc-data pandoc-citeproc
apt-get -y install libreoffice writer2latex
apt-get -y install fonts-inconsolata fonts-ricty-diminished texlive-fonts-extra
apt-get -y install biber latexmk
apt-get -y install fonts-oxygen fonts-noto-mono fonts-jura

echo "Installing multimedia packages"
apt-get -y install gimp
apt-get -y install vlc
apt-get -y install mplayer gnome-mplayer
apt-get -y install kodi kodi-addons-dev kodi-data

