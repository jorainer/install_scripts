echo "Installing AUR stuff"
mkdir -p ~/builds

echo "mysql56"
cd ~/builds
git clone https://aur.archlinux.org/mysql56.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/mysql56.tar.gz
cd mysql56
makepkg -sic

echo "plex-media-player"
cd ~/builds
git clone https://aur.archlinux.org/plex-media-player.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/plex-media-player.tar.gz
cd plex-media-player
makepkg -sic

echo "filebot"
cd ~/builds
git clone https://aur.archlinux.org/filebot47.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/filebot47.tar.gz
cd filebot47
makepkg -sic

echo "udunits"
cd ~/builds
git clone https://aur.archlinux.org/udunits.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/udunits.tar.gz
cd udunits
makepkg -sic

echo "mediathek"
cd ~/builds
git clone https://aur.archlinux.org/mediathek.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/mediathek.tar.gz
cd mediathek
makepkg -sic

echo "requirements for vmware"
cd ~/builds
git clone https://aur.archlinux.org/ncurses5-compat-libs
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/ncurses5-compat-libs.tar.gz
cd ncurses5-compat-libs
makepkg -sic

echo "vmware"
cd ~/builds
git clone https://aur.archlinux.org/vmware-workstation.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/vmware-workstation.tar.gz
cd vmware-workstation
makepkg -sic
