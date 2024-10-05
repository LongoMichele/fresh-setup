#!/bin/sh

echo "Updating system before installing packages..."
sudo pacman -Syu --noconfirm

zsh ./installers/zsh.sh
zsh ./installers/env.sh
zsh ./installers/ags.sh

echo "Setup complete, please reboot the system :)"
