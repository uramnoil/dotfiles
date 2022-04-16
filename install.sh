#!/bin/sh

sudo apt install zsh
chsh -s $(which zsh)

git clone --branch=master --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh $1  # "Source" to install Sauce Code Nerd Font
cd ..
rm -rf nerd-fonts

curl -sS https://starship.rs/install.sh | sh

cd `dirname $0`

rm -rf ~/.gitconfig
rm -rf ~/.config

for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    # シンボリックリンクを貼る
    ln -snfvb ${PWD}/"$f" ~/
done
