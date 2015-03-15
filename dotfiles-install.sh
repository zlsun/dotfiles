#!/bin/bash

SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")

# bash
ln -s -i $DOTFILES/bashrc          ~/.bashrc
ln -s -i $DOTFILES/bash_aliases    ~/.bash_aliases
ln -s -i $DOTFILES/bash_completion ~/.bash_completion
ln -s -i $DOTFILES/bash_funcs      ~/.bash_funcs
ln -s -i $DOTFILES/bash_logout     ~/.bash_logout
ln -s -i $DOTFILES/profile         ~/.profile

# vim
ln -s -i $DOTFILES/vimrc.local         ~/.vimrc.local
ln -s -i $DOTFILES/vimrc.before.local  ~/.vimrc.before.local
ln -s -i $DOTFILES/vimrc.bundles.local ~/.vimrc.bundles.local
ln -s -i $DOTFILES/gvimrc.local        ~/.gvimrc.local
ln -s -i $DOTFILES/NERDTreeBookmarks   ~/.NERDTreeBookmarks

# zsh
ln -s -i $DOTFILES/zshrc  ~/.zshrc
ln -s -i $DOTFILES/zshenv ~/.zshenv
ln -s -i $DOTFILES/warprc ~/.warprc

# others
ln -s -i $DOTFILES/gtkrc-2.0        ~/.gtkrc-2.0
ln -s -i $DOTFILES/gitconfig        ~/.gitconfig
ln -s -i $DOTFILES/pydistutils.cfg  ~/.pydistutils.cfg
ln -s -i $DOTFILES/pip              ~/.pip

