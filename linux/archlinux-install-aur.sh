echo "Installing AUR stuff"
mkdir -p ~/builds

# echo "mysql56"
# cd ~/builds
# git clone https://aur.archlinux.org/mysql56.git
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/mysql56.tar.gz
# cd mysql56
# makepkg -sic

echo "plex-media-player"
cd ~/builds
git clone https://aur.archlinux.org/plex-media-player.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/plex-media-player.tar.gz
cd plex-media-player
makepkg -sic

echo "gkrellm-themes"
cd ~/builds
git clone https://aur.archlinux.org/gkrellm-themes.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/gkrellm-themes.tar.gz
cd gkrellm-themes
makepkg -sic

echo "plexamp"
cd ~/builds
git clone https://aur.archlinux.org/plexamp-appimage.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/plexamp-appimage.tar.gz
cd plexamp-appimage
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

# echo "mediathek"
# cd ~/builds
# git clone https://aur.archlinux.org/mediathek.git
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/mediathek.tar.gz
# cd mediathek
# makepkg -sic

# echo "requirements for vmware"
# cd ~/builds
# git clone https://aur.archlinux.org/ncurses5-compat-libs
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/ncurses5-compat-libs.tar.gz
# cd ncurses5-compat-libs
# makepkg -sic

echo "vmware-keymaps"
cd ~/builds
git clone https://aur.archlinux.org/vmware-keymaps.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/vmware-keymaps.tar.gz
cd vmware-keymaps
makepkg -sic

echo "vmware"
cd ~/builds
git clone https://aur.archlinux.org/vmware-workstation.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/vmware-workstation.tar.gz
cd vmware-workstation
makepkg -sic

# echo "mailspring"
# cd ~/builds
# git clone https://aur.archlinux.org/mailspring.git
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/mailspring.tar.gz
# cd mailspring
# makepkg -sic

echo "teams"
cd ~/builds
git clone https://aur.archlinux.org/teams.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/teams.tar.gz
cd teams
makepkg -sic

echo "crossover"
cd ~/builds
git clone https://aur.archlinux.org/crossover.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/crossover.tar.gz
cd crossover
makepkg -sic

echo "slack-desktop"
cd ~/builds
git clone https://aur.archlinux.org/slack-desktop.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/slack-desktop.tar.gz
cd slack-desktop
makepkg -sic

echo "zoom"
cd ~/builds
git clone https://aur.archlinux.org/zoom.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/zoom.tar.gz
cd zoom
makepkg -sic

echo "zotero"
cd ~/builds
git clone https://aur.archlinux.org/zotero-bin.git
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/zotero-bin.tar.gz
cd zotero-bin
makepkg -sic

# echo "ecryptfs"
# cd ~/builds
# git clone https://aur.archlinux.org/ecryptfs-simple.git
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/ecryptfs-simple.tar.gz
# cd ecryptfs-simple
# makepkg -sic

# echo "skypeforlinux"
# cd ~/builds
# git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/skypeforlinux-stable-bin.tar.gz
# cd skypeforlinux-stable-bin
# makepkg -sic

echo "dropbox"
cd ~/builds
git clone https://aur.archlinux.org/dropbox.git
# curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/dropbox.tar.gz
cd dropbox
makepkg -sic

echo "noson"
cd ~/builds
git clone https://aur.archlinux.org/noson-app
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/noson-app.tar.gz
cd noson-app
makepkg -sic

echo "mons"
cd ~/builds
git clone https://aur.archlinux.org/mons
curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/mons.tar.gz
cd mons
makepkg -sic

echo "icloud-notes-linux-client"
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -sic
sudo systemctl enable --now snapd.socket
sudo snap install icloud-notes-linux-client
