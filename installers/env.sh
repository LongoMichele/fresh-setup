echo "Installing Wayland, Hyprland and relative tools..."
sudo pacman -S wayland xorg-xwayland wlroots nvidia nvidia-utils hyprland hyprlock swaybg sddm kitty vim --noconfirm
sudo systemctl enable sddm
sudo systemctl start sddm

pictures="$HOME/Pictures"
if [ ! -d "$pictures" ]; then
    echo "mkdir $pictures"
fi
if [ -f "$pictures/bg.jpg" ]; then
    mv "$pictures/bg.jpg" "$pictures/bg.jpg.old"
fi
cp "../assets/bg.jpg" "$pictures"

hyprConfig="$HOME/.config/hypr"
if [ -d "$hyprConfig" ]; then
    mv "$hyprConfig" "$hyprConfig.old"
fi
cp -rv "../dotfiles/hypr" "$hyprConfig"