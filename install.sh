#!/bin/sh

echo "Updating system before installing packages..."
sudo pacman -Syu --noconfirm

sh ./zsh.sh
sh ./env.sh