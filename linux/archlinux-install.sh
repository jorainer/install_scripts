## This assumes we have an installation of archlinux running.
## Additional settings and stuff useful for customization:
## https://github.com/Dobbie03/dots
## Missing:
## - udunits2
echo "This script should be run with sudo"

pacman -Sy

echo "Installing system tools"
pacman -S --noconfirm pkgfile
## pkgfile -u and then pkgfile netstat or similar
pacman -S --noconfirm mc
pacman -S --noconfirm htop
pacman -S --noconfirm cifs-utils dosfstools mtools ntfs-3g
pacman -S --noconfirm wicd
pacman -S --noconfirm gkrellm
pacman -S --noconfirm owncloud-client
pacman -S --noconfirm xdotool xsel keepassxc
pacman -S --noconfirm terminator
pacman -S --noconfirm redshift
pacman -S --noconfirm fping
pacman -S --noconfirm ncdu
pacman -S --noconfirm dkms
pacman -S --noconfirm libxcrypt-compat
pacman -S --noconfirm docker
pacman -S --noconfirm docker-compose

echo "openbox"
pacman -S --noconfirm openbox obconf archlabs-obkey archlabs-skel-openbox

echo "xfce4"
pacman -S --noconfirm xfce4-terminal xfce4-power-manager xfce4-screensaver xfce4-session xfce4-settings
pacman -S --noconfirm thunar thunar-archive-plugin thunar-volman

echo "Installing development tools"
pacman -S --noconfirm gcc gcc-fortran gcc-objc
pacman -S --noconfirm arpack lapack lapacke
pacman -S --noconfirm graphviz
pacman -S --noconfirm perl python
pacman -S --noconfirm libxml2
pacman -S --noconfirm sqlite
pacman -S --noconfirm readline
pacman -S --noconfirm git gist libgit2
pacman -S --noconfirm netcdf netcdf-cxx
pacman -S --noconfirm imagemagick6
pacman -S --noconfirm perlbrew
pacman -S --noconfirm pkg-config cmake automake autoconf
pacman -S --noconfirm emacs
pacman -S --noconfirm openvpn openssl
pacman -S --noconfirm fftw units
pacman -S --noconfirm jdk10-openjdk jdk8-openjdk java-openjfx
pacman -S --noconfirm gsl
pacman -S --noconfirm python-pip python-setuptools python-setuptools-git
pacman -S --noconfirm python2-six
pacman -S --noconfirm linux-headers
pacman -S --noconfirm mariadb
pacman -S --noconfirm mariadb-libs
pacman -S --noconfirm mariadb-clients

echo "Installing productivity tools"
pacman -S --noconfirm texlive-bin texlive-core texlive-fontsextra texlive-science texlive-latexextra
pacman -S --noconfirm biber
pacman -S --noconfirm texinfo texi2html 
pacman -S --noconfirm pandoc pandoc-citeproc pandoc-crossref
pacman -S --noconfirm libreoffice-still
pacman -S --noconfirm ttf-inconsolata
pacman -S --noconfirm thunderbird
pacman -S --noconfirm mattermost mattermost-desktop

echo "Installing multimedia packages"
pacman -S --noconfirm gimp darktable feh
pacman -S --noconfirm vlc mpv
pacman -S --noconfirm ffmpeg ffmpegthumbnailer
pacman -S --noconfirm ario xmms2
pacman -S --noconfirm handbrake
pacman -S --noconfirm transmission-gtk
pacman -S --noconfirm digikam hugin kipi-plugins
pacman -S --noconfirm ncspot

echo "Switching to JDK8"
archlinux-java java-8-openjdk
