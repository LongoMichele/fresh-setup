#!/bin/sh

echo "Updating system before installing packages..."
sudo pacman -Syu --noconfirm

sh ./installers/zsh.sh
sh ./installers/env.sh
sh ./installers/ags.sh

read -p "Setup complete, reboot the system? [Y/n]: " confirm
if [[ $confirm == [yY] || $confirm == [yY][eE][sS] || ! $confirm ]]; then
    reboot
fi
