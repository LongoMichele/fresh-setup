# Fresh setup

## Setup

Simply run `sh ./install.sh`.

### List of installed packages

- `zsh` & [`ohmyzsh`](https://ohmyz.sh/) (It will also be set as the default shell.)<br />
    - `ohmyzsh` plugins:
        - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
        - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
        - [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
    - A few of my favourite aliases will be added to `.zshrc`<br />
        - `rc` => `vi ~/.zshrc && source ~/.zshrc`
        - `c` => `clear && `
        - `cc` => `clear`
        - `la` => `ls -oAFgh`
        - `cla` => `clear && ls -oAFgh`
- `wayland`
- `xorg-xwayland`
- `wlroots`
- `nvidia`
- `nvidia-utils`
- `hyprland`
- `hyprlock`
- `swaybg`
- `sddm`
- `kitty`
- `vim`

## Info

All folders and files under `assets/*` will be copied over to `$HOME/*`. The default location for the background is `$HOME/Pictures/bg.jpg`, it is suggested to place the corresping file in this folder before executing `sh ./install.sh`.
