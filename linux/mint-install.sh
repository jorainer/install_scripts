## That's the installation script for linux mint.
echo "Installing additional repos"
add-apt-repository ppa:ravefinity-project/ppa
add-apt-repository ppa:nathan-renniewaldock/flux
add-apt-repository ppa:stebbins/handbrake-releases
sudo add-apt-repository ppa:ozmartian/apps
apt-get update

echo "Installing system tools"
apt-get -y install mc
apt-get -y install htop
apt-get -y install cifs-utils dosfstools mtools ntfs-3g hfsutils macutils
apt-get -y install wicd
apt-get -y install gkrellm gkrellm-hdplop gkrellm-ibam gkrellm-reminder gkrellm-thinkbat gkrellm-volume gkrellm-xkb gkrelltop gkrellweather gkrellxmms2
apt-get -y install keepass2
apt-get -y install fluxgui
apt-get -y install owncloud-client csync-owncloud

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
apt-get -y install asmon wmcpuload wmifs wmmixer wmmemload wmnd wmnet
apt-get -y install wmweather
apt-get -y install mint-themes mint-x-icons mint-y-icons mint-y-theme
apt-get -y install light-theme
apt-get -y install gnome-icon-theme-* mate-themes oxygen-icon-theme
apt-get -y install fvwm fvwm-crystal fvwm-icons
apt-get -y install xterm ttf-bitstream-vera xcompmgr suckless-tools xautolock dmz-cursor-themes
# apt-get -y install syslinux-themes-linuxmint-cinnamon
# apt-get -y install cinnamon-themes
apt-get -y install ambiance-flat-colors radiance-flat-colors vibrancy-colors vivacious-colors vivacious-colors-gtk-dark vivacious-colors-gtk-light

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
apt-get -y install openssl openvpn libssl-dev
apt-get -y install fftw-dev libfftw3-bin libfftw3-dev
apt-get -y install mysql-client mysql-server libmysqld-dev libmysqlclient-dev mysql-common
apt-get -y install libudunits2-0 libudunits2-dev
apt-get -y install openjdk-8-jdk
apt-get -y install libgsl-dev libgsl2
apt-get -y install scilab scilab-data scilab-include
apt-get -y install autoconf automake libtool libharfbuzz-dev libfreetype6-dev libfontconfig1-dev libx11-dev libxrandr-dev libvdpau-dev libva-dev mesa-common-dev libegl1-mesa-dev yasm libasound2-dev libpulse-dev libuchardet-dev zlib1g-dev libfribidi-dev git libgnutls-dev libgl1-mesa-dev libsdl2-dev cmake
apt-get -y install python-pip python-setuptools python-setuptools-git
apt-get -y install xserver-xorg-dev x11proto-xinerama-dev libx11-xcb-dev
apt-get -y build-dep libgl1-mesa-dri libxcb-glx0-dev

echo "Installing python libs"
pip install --upgrade setuptools
pip install --upgrade pip
pip install numpy
pip install pyserial
pip install pygments-style-solarized

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
apt-get -y install mpv libmpv-dev
apt-get -y install rhythmbox rhythmbox-plugins
apt-get -y install xmms2 xmms2-plugin-all
apt-get -y install darktable
##apt-get -y install ffmpeg ffmpegthumbnailer libavcodec-extra libavcodec-dev
apt-get -y install qt5-default qt5-qmake
apt-get -y install ninja
apt-get -y install handbrake-gtk
apt-get -y install ffmpeg ffmpegthumbnailer ffmpegthumbs
apt-get -y install vidcutter

# apt-get -y install libconfig-simple-perl
# apt-get -y install libarray-compare-perl
# apt-get -y install libparallel-forkmanager-perl
# apt-get -y install libmoosex-getopt-perl
# apt-get -y install libcarp-always-perl libcarp-assert-perl libcarp-clan-perl
# apt-get -y install libclass-base-perl
# apt-get -y install libdbi-perl libdbd-mysql-perl libclass-dbi-perl libclass-dbi-mysql-perl
# apt-get -y install libcompress-bzip2-perl libio-compress-perl libcompress-raw-zlib-perl
# apt-get -y install libexception-class-perl libsort-naturally-perl
# apt-get -y install libgetopt-simple-perl libio-stringy-perl
# apt-get -y install liblist-moreutils-perl libexporter-tiny-perl


