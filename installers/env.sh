echo "Installing Wayland, Hyprland and relative tools..."

env="wayland xorg-xwayland wlroots hyprland kitty vim"
nvidia="nvidia nvidia-utils"
utils="hyprlock swaybg"
login="sddm"

install="$env $utils"
read -p "Install Nvidia drivers? [Y/n]: " instNvidia
if [[ $instNvidia == [yY] || $instNvidia == [yY][eE][sS] || ! $instNvidia ]]; then
    install="$install $nvidia"
fi
read -p "Install SDDM? [Y/n]: " instLogin
if [[ $instLogin == [yY] || $instLogin == [yY][eE][sS] || ! $instLogin ]]; then
    install="$install $login"
fi

sudo pacman -S $install --noconfirm
if [[ $instLogin == [yY] || $instLogin == [yY][eE][sS] || ! $instLogin ]]; then
    sudo systemctl enable sddm
fi

pictures="$HOME/Pictures"
if [ ! -d "$pictures" ]; then
    echo "mkdir $pictures"
fi
if [ -f "$pictures/bg.jpg" ]; then
    mv "$pictures/bg.jpg" "$pictures/bg.jpg.old"
fi
cp "./assets/bg.jpg" "$pictures"

hyprConfig="$HOME/.config/hypr"
if [ -d "$hyprConfig" ]; then
    mv "$hyprConfig" "$hyprConfig.old"
fi
cp -rv "./dotfiles/hypr" "$hyprConfig"
