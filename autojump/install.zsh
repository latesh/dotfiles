#!/bin/zsh
sudo mkdir -p /usr/share/autojump/
sudo cp ~/.dotfiles/autojump/icon.png /usr/share/autojump/

# scripts
sudo cp ~/.dotfiles/autojump/jumpapplet /usr/bin/
sudo cp ~/.dotfiles/autojump/autojump /usr/bin/

# man pages
sudo cp ~/.dotfiles/autojump/autojump.1 /usr/share/man/man1/

# autocompletion file in the first directory of the FPATH variable
sudo cp ~/.dotfiles/autojump/_j $(echo $FPATH | cut -d":" -f 1)