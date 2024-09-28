#!/bin/sh

echo "Updating system before installing packages..."
sudo pacman -Syu --noconfirm

sh ./installers/zsh.sh
sh ./installers/env.sh
sh ./installers/ags.sh

echo "Setup complete, please reboot the system :)"
