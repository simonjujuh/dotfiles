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
ln -sf ${BASEDIR}/cheat.zsh ~/.cheat.zsh

# i3 setup
ln -sf ${BASEDIR}/i3/config ~/.config/i3/config
ln -sf ${BASEDIR}/i3/scripts ~/.config/i3/scripts
ln -sf ${BASEDIR}/i3/blocks ~/.config/i3/blocks
ln -sf ${BASEDIR}/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
ln -sf ${BASEDIR}/rofi/config ~/.config/rofi/config
ln -sf ${BASEDIR}/compton/compton.conf ~/.config/compton.conf

sudo cp ${BASEDIR}/i3/scripts/battery-monitor.service /etc/systemd/system/battery-monitor.service
sudo systemctl enable battery-monitor
sudo systemctl start battery-monitor
sudo cp ${BASEDIR}/i3/scripts/battery-monitor.timer /etc/systemd/system/battery-monitor.timer
sudo systemctl enable battery-monitor.timer
sudo systemctl start battery-monitor.timer
