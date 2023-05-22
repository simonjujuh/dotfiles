# Dotfiles

## Installation

```bash
sudo apt install vim tmux git xsel
```

## ZSH

```bash
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

Configure plugins of your choice
- Git (available)
- Z (available)
- Autosuggestions

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## FZF

```bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## Git

Nothing todo

## Tmux

- https://github.com/tmux-plugins/tpm
- https://github.com/tmux-plugins/tmux-logging

## Vim

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Shell logging

- tmux / asciinema

## Cheat

...

## Exegol

...