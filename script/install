#!/usr/bin/env bash

SCRIPT=$(readlink -f "$0")
DOTFILES=$(dirname "$SCRIPT")

link-dotfile() {
    ln -s -i $DOTFILES/$@ ~/.$@
}

# bash
link-dotfile bashrc
link-dotfile bash_aliases
link-dotfile bash_completion
link-dotfile bash_funcs
link-dotfile bash_logout
link-dotfile profile

# vim
link-dotfile vim
link-dotfile vimrc
link-dotfile vimrc.bundles
# link-dotfile vimrc.local
# link-dotfile vimrc.before.local
# link-dotfile vimrc.bundles.local
# link-dotfile gvimrc.local
link-dotfile NERDTreeBookmarks

# zsh
link-dotfile zshrc
link-dotfile zshenv
link-dotfile warprc

# others
link-dotfile gtkrc-2.0
link-dotfile gitconfig
link-dotfile pydistutils.cfg
link-dotfile pip

