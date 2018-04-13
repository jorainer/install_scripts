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
pacman -S --noconfirm xdotool xsel keepass
pacman -S --noconfirm terminator

echo "Installing development tools"
pacman -S --noconfirm gcc gcc-fortran gcc-objc
pacman -S --noconfirm arpack lapack lapacke
pacman -S --noconfirm graphviz
pacman -S --noconfirm perl python
pacman -S --noconfirm libxml2
pacman -S --noconfirm sqlite
pacman -S --noconfirm readline
pacman -S --noconfirm git gist
pacman -S --noconfirm netcdf netcdf-cxx
pacman -S --noconfirm imagemagick6
pacman -S --noconfirm perlbrew
pacman -S --noconfirm pkg-config cmake automake autoconf
pacman -S --noconfirm emacs
pacman -S --noconfirm openvpn openssl
pacman -S --noconfirm fftw units
pacman -S --noconfirm jdk10-openjdk java-openjfx
pacman -S --noconfirm gsl
pacman -S --noconfirm python-pip python-setuptools python-setuptools-git

echo "Installing productivity tools"
pacman -S --noconfirm texlive-bin texlive-core texlive-fontsextra texlive-science texlive-latexextra
pacman -S --noconfirm biber
pacman -S --noconfirm texinfo texi2html 
pacman -S --noconfirm pandoc pandoc-citeproc pandoc-crossref
pacman -S --noconfirm libreoffice-still
pacman -S --noconfirm ttf-inconsolata

echo "Installing multimedia packages"
pacman -S --noconfirm gimp darktable
pacman -S --noconfirm vlc mpv
pacman -S --noconfirm ffmpeg ffmpegthumbnailer
pacman -S --noconfirm ario xmms2
pacman -S --noconfirm handbrake

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
