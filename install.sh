#!/bin/sh
echo "Ensure we have command line tools installed\n - Note that only command line tools are required."
sudo xcode-select --install
# sudo xcodebuild -license

./install-zsh.sh

./install-brew.sh

## Perl stuff
./install-perl.sh

## Python stuff
./install-python.sh

echo "\n\n -- you might also want to change the default shell to zsh:\n"
echo " 1) Add /usr/local/bin/zsh to /etc/shells"
echo " 2) change the shell with chsh -s /usr/local/bin/zsh"

echo "Addendum: cloning OSX Terminal color schemes"
mkdir -p "$HOME/Projects/git/"
cd "$HOME/Projects/git/"
git clone https://github.com/lysyi3m/osx-terminal-themes

echo "You might want select one of the terminal osx themes, e.g. Neutron"


