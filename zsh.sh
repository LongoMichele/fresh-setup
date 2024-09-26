echo "Installing zsh & ohmyzsh..."
sudo pacman -S zsh --noconfirm
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

newPlugins="plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting)"
sed -i "s/^plugins=(=(.*)$)/$newPlugins" $HOME/.zsh