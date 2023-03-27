#!/bin/bash -eu

test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
ZSH_PATH=$(brew --prefix)/bin/zsh
 
sudo echo $ZSH_PATH >> /etc/shells
chsh -s $ZSH_PATH