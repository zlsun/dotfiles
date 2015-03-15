
move-to-mydotfiles () {
    for dotfile in "$@"; do
        target="$DOTFILES/${dotfile:1}"
        mv ${dotfile} ${target}
        ln -s ${target} ${dotfile}
        echo "ln -s -i \$DOTFILES/${dotfile:1} ~/${dotfile}" >> $DOTFILES/dotfiles-install.sh
    done
}

link-to-mydotfiles () {
    for dotfile in "$@"; do
        target="$DOTFILES/${dotfile:1}"
        ln -s ${target} ${dotfile}
    done
}


