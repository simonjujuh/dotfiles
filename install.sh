#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig
ln -sf ${BASEDIR}/git-completion.bash ~/.git-completion.bash

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

# vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc
# ln -sf ${BASEDIR}/vim/ ~/.vim

# cheat
# ln -sf ${BASEDIR}/cheat-completion.bash ~/.cheat-completion.bash
# ln -sf ${BASEDIR}/cheat ~/.cheat

# bashrc
ln -sf ${BASEDIR}/bashrc ~/.bashrc

# xinitrc
ln -sf ${BASEDIR}/xinitrc ~/.xinitrc
