#!/bin/sh

# alacritty
cp -rf ~/.config/alacritty/* ./alacritty/.config/alacritty/

# dunst
cp -rf ~/.config/dunst/* ./dunst/.config/dunst/

# firefox
## import from Night Tab settings

# fish
cp -rf ~/.config/fish/* ./fish/.config/fish/

# i3
cp -rf ~/.config/i3/* ./i3/.config/i3/

# nvim
cp -rf ~/.config/nvim/* ./nvim/.config/nvim/
rm -rf ./nvim/.config/nvim/dein/repos/*

# polybar
cp -rf ~/.config/polybar/* ./polybar/.config/polybar/

# rofi
cp -rf ~/.config/rofi/* ./rofi/.config/rofi/

# terminator
cp -rf ~/.config/terminator/* ./terminator/.config/terminator/

# tmux
cp -rf ~/.tmux.conf ./tmux/

# vim
cp -rf ~/.vimrc ./vim/

