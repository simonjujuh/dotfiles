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
info "Removing old exegol configuration files"
rm -rf ~/.exegol/my-resources/setup/vim/vimrc
rm -rf ~/.exegol/my-resources/setup/tmux/tmux.conf
rm -rf ~/.exegol/my-resources/setup/zsh/zshrc

# Shell
info "Linking bash and zsh configuration files"
cp ${BASEDIR}/zsh/zshrc_exegol ~/.exegol/my-resources/setup/zsh/zshrc

# Tmux
info "Linking tmux configuration file"
cp ${BASEDIR}/tmux/tmux.conf ~/.exegol/my-resources/setup/tmux/tmux.conf

# vim
info "Linking vim configuration file and installing plugins"
cp ${BASEDIR}/tmux/tmux.conf ~/.exegol/my-resources/setup/vim/vimrc

# exegol
info "Linking exegol setup script"
cp ${BASEDIR}/exegol/load_user_setup.sh ~/.exegol/my-resources/setup/load_user_setup.sh

success "Installation successful"