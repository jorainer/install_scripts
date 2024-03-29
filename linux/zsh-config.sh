echo "Configuring zsh etc."
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${Zdotdir:-$HOME}/.zprezto"
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
