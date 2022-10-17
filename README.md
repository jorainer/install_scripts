# Setup and installation

## Linux installation and setup

Installation of linux ([archlabs](https://archlabslinux.com/), an arch based
linux) is described in the [archlabs.org](linux/archlabs.org) in the *linux*
subfolder. The document describes also some configurations etc of the installed
linux and provides maybe helpful links.

## macOS installation and setup

Use [homebrew](https://brew.sh) to install all command line tools and 
applications.

- `./install.sh`: calls all individual *install* scripts to install all required
  software.


### Manual settings

- Function keys for Terminal: System preferences -> Keyboard -> Shortcuts: 
  select `fn` keys on the left, add with `+` Terminal app.
- Make `emacs` the default editor: in *.zprofile* change `export EDITOR='nano'`
  to `export EDITOR='/usr/local/bin/emacsclient -nw`.
- Make `emacs` the default git editor:
  `git config --global core.editor "emacsclient -nw"`.
- Choose a terminal color theme: open one of the themes in
  *Projects/git/osx-terminal-themes*. Good choices are *SpaceGrey* or *Tomorrow*
  themes.
- Create a shortcut to open (new) terminal windows: follow the instruction
  [here](https://claudiodangelis.com/osx/2012/09/27/osx-launch-terminal-from-shortcut.html)
  and add the AppleScript below:
  
  ```
  on run {input, parameters}
	
	tell application "Terminal"
		do script " "
		activate
	end tell
	
	return input
  end run
  ```
  
