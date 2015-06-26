#!/usr/bin/env bash

BASE=~/.dotfiles

## run

cd "$BASE"

git submodule update --init

echo "Linking..."

ln -sf $BASE/zshrc ~/.zshrc
ln -sf $BASE/oh-my-zsh ~/.oh-my-zsh
ln -sf $BASE/bashrc ~/.bashrc
ln -sf $BASE/bash_profile ~/.bash_profile
ln -sf $BASE/bash_aliases ~/.bash_aliases
ln -sf $BASE/commonshrc ~/.commonshrc
ln -sf $BASE/inputrc ~/.inputrc
ln -sf $BASE/bcrc ~/.bcrc
ln -sf $BASE/tmux.conf ~/.tmux.conf

echo "Done."

echo "Installing submodules..."

export INSTALLING=true
source ~/.bashrc

echo "Installing gitconfig..."

cd gitconfig
./install.sh
cd "$BASE"

echo "Done."

echo "Installing git-extra..."

cd git-extras
sudo make install

echo "Done."

echo "Done."
