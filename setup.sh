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


BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# macOS dependencies
if [[ "$(uname)" == "Darwin" ]]; then
    brew install tmux vim git
# Linux dependencies
else
    sudo apt install -y vim tmux git xsel
fi

# Install oh-my-zsh
info "Installing oh-my-zsh"
rm -rf ~/.oh-my-zsh
yes | sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --quiet --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install FZF
info "Installing FZF"
rm -rf ~/.fzf
git clone --quiet --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && yes | ~/.fzf/install

# Bash
info "Linking bash configuration file" 
rm -rf ~/.bashrc
ln -sf ${BASEDIR}/bash/bashrc ~/.bashrc

# ZSH
info "Linking zsh configuration file"
rm -rf ~/.zshrc
ln -sf ${BASEDIR}/zsh/zshrc ~/.zshrc

# Git
info "Linking git configuration file"
ln -sf ${BASEDIR}/git/gitconfig ~/.gitconfig

# Tmux
info "Linking tmux configuration file"
ln -sf ${BASEDIR}/tmux/tmux.conf ~/.tmux.conf

# Vim setup
info "Linking vim configuration file and installing plugins"
rm -rf ~/.vim
git clone --quiet --depth 1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -sf ${BASEDIR}/vim/vimrc ~/.vimrc
vim +PluginInstall +qall

success "Installation successful"