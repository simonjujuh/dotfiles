#!/bin/bash
# Author: Simon Juhel (@simonjujuh)

# -------------------------------------------------------------------
# Colors declaration
# -------------------------------------------------------------------
RED='\033[1;31m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
NOCOLOR='\033[1;0m'

# -------------------------------------------------------------------
# Functions declaration
# -------------------------------------------------------------------
function info() {
  echo -e "${BLUE}[*]${NOCOLOR} $@"
}

function debug() {
  echo -e "${YELLOW}[D]${NOCOLOR} $@"
}

function success() {
  echo -e "${GREEN}[+]${NOCOLOR} $@"
}

# -------------------------------------------------------------------
# Beginning of the script
# -------------------------------------------------------------------
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Remove old dotfiles
info "Removing old dotfiles"
rm -rf ~/.gitconfig
rm -rf ~/.tmux.conf
rm -rf ~/.zshrc
rm -rf ~/.bashrc
rm -rf ~/.vimrc

# shells
info "Linking bash and zsh configuration files"
ln -sf ${BASEDIR}/bash/bashrc ~/.bashrc
ln -sf ${BASEDIR}/zsh/zshrc ~/.zshrc

# git
info "Linking git configuration file"
ln -sf ${BASEDIR}/git/gitconfig ~/.gitconfig

# tmux
info "Linking tmux configuration file"
ln -sf ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf

# vim
info "Linking vim configuration file and installing plugins"
ln -sf ${BASEDIR}/vim/vimrc ~/.vimrc
vim +PluginInstall +qall

success "Installation successful"