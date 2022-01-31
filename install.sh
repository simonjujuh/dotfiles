#!/usr/bin/env bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# git
ln -sf ${BASEDIR}/gitconfig ~/.gitconfig

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

# vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc

# shells
ln -sf ${BASEDIR}/bashrc ~/.bashrc
ln -sf ${BASEDIR}/zshrc ~/.zshrc
ln -sf ${BASEDIR}/cheat.zsh ~/.cheat.zsh

# misc
echo "[*] Installation done"
echo "    Don't forget to install the following dependencies"
echo "    - https://ohmyz.sh/"
echo "    - https://github.com/tmux-plugins/tpm"
echo "    - https://github.com/tmux-plugins/tmux-logging"
echo "    - https://github.com/VundleVim/Vundle.vim (and call PluginInstall)"
echo "    - https://github.com/junegunn/fzf"
echo "    - https://github.com/cheat/cheat"
echo ""
