# Dotfiles
My personal setup.

## Dependencies

These depencies are in use by this project `git, xsel, tmux, vim, fzf, oh-my-zsh`.

```bash
# Packaged dependencies
sudo apt install vim tmux git xsel
# Install omz
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# Install omz  plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Install FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# Install vim Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Link configuration files

```bash
./install.sh
./exegol_install.sh
```
