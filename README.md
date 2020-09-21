# Setup and installation

Use [homebrew](https://brew.sh) to install all command line tools and 
applications.

- `./brew-jo-strong.sh`: install all command line utilities using homebrew.
- `./brew-cask.sh`: install apps using *brew cask*.

Install the Latex environment with the `tinytex` R package, i.e. in a 
(non-docker) R version install the `tinytex` with 
`install.packages("tinytex")` and then LaTeX with `tinyte::install_tinytex()`.

## Manual settings

- Function keys for Terminal: System preferences -> Keyboard -> Shortcuts: 
  select `fn` keys on the left, add with `+` Terminal app.
- Make `emacs` the default editor: in *.zprofile* change `export EDITOR='nano'`
  to `export EDITOR='/usr/local/bin/emacsclient -nw`.
- Make `emacs` the default git editor:
  `git config --global core.editor "emacsclient -nw"`.
- Choose a terminal color theme: open one of the themes in
  *Projects/git/osx-terminal-themes*. Good choices are *SpaceGrey* or *Tomorrow*
  themes.
