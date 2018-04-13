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

echo "Configuring zsh etc."
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
cat "$HOME/.zshrc" >> "$HOME/.zprezto/runcoms/zshrc"
rm "$HOME/.zshrc"
ln -s "$HOME/.zprezto/runcoms/zlogin" "$HOME/.zlogin" 
ln -s "$HOME/.zprezto/runcoms/zlogout" "$HOME/.zlogout"
ln -s "$HOME/.zprezto/runcoms/zpreztorc" "$HOME/.zpreztorc"
ln -s "$HOME/.zprezto/runcoms/zprofile" "$HOME/.zprofile"
ln -s "$HOME/.zprezto/runcoms/zshenv" "$HOME/.zshenv"
ln -s "$HOME/.zprezto/runcoms/zshrc" "$HOME/.zshrc"
echo "alias R='R --no-save'" >> "$HOME/.zshrc"
git clone https://github.com/seebi/dircolors-solarized "${ZDOTDIR:-$HOME}/.zprezto/contrib/dircolors-solarized/"
echo "eval \`dircolors ~/.zprezto/contrib/dircolors-solarized/dircolors.256dark\`" >> "$HOME/.zshrc"
