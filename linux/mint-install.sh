## That's the installation script for linux mint.
echo "Installing desktop system"
apt-get -y install agenda.app
apt-get -y install batman.app
apt-get -y install cynthiune.app
apt-get -y install gnustep
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
## perlbrew?

echo "Installing productivity tools"
apt-get -y install texlive-full
apt-get -y install texify texi2html
apt-get -y install pandoc pandoc-citeproc
apt-get -y install libreoffice writer2latex

echo "Installing multimedia packages"
apt-get -y install gimp
apt-get -y install vlc
apt-get -y install mplayer gnome-mplayer
apt-get -y install kodi kodi-addons-dev kodi-data

