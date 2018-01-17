add-apt-repository ppa:varlesh-l/papirus-pack
apt-get update
apt-get -y install papirus-gtk-icon-theme

add-apt-repository ppa:noobslab/themes
apt-get update
apt-get -y install arc-theme

add-apt-repository ppa:noobslab/icons
apt-get update
apt-get -y install arc-icons shadow-icon-theme

add-apt-repository ppa:noobslab/icons2
apt-get update
apt-get -y install square-icons

sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list"
apt-get update
apt-get -y install arc-theme

add-apt-repository ppa:nilarimogard/webupd8 
apt-get update
apt-get -y install oomox

## Fixing workspaces
su jo gsettings set org.pantheon.desktop.gala.behavior dynamic-workspaces false
su jo gsettings set org.gnome.desktop.wm.preferences num-workspaces 6
