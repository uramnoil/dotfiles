#!/bin/sh -eu

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew tap Homebrew/bundle