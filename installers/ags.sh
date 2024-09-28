yay -S aylurs-gtk-shell-git
yay -S matugen-bin
yay -S hyprpicker-git
curl -fsSL https://bun.sh/install | bash
sudo pacman -S dart-sass fd brightnessctl swww fzf hyprpicker slurp wf-recorder swappy --noconfirm
git clone https://github.com/Aylur/dotfiles.git
cp -r dotfiles/ags $HOME/.config/ags