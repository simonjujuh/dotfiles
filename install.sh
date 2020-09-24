#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig
ln -sf ${BASEDIR}/git-completion.bash ~/.git-completion.bash

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

# vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc

# bashrc
ln -sf ${BASEDIR}/bashrc ~/.bashrc

# cheat
ln -sf ${BASEDIR}/cheat.bash ~/.cheat.bash

# i3 setup
ln -sf ${BASEDIR}/i3/config ~/.config/i3/config
ln -sf ${BASEDIR}/rofi/config ~/.config/rofi/config
ln -sf ${BASEDIR}/compton.conf ~/.config/compton.conf
