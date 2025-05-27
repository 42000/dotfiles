#!/bin/bash

# HOME
ln -s "$(pwd)/.oh-my-zsh" ~
ln -s "$(pwd)/.tmux.conf" ~
ln -s "$(pwd)/.zshrc" ~
ln -s "$(pwd)/shellScripts" ~
ln -s "$(pwd)/zsh" ~

# CONFIG
ln -s "$(pwd)/.mimeapps.list" ~/.config
ln -s "$(pwd)/nvim" ~/.config
ln -s "$(pwd)/foot" ~/.config
ln -s "$(pwd)/dunst" ~/.config
ln -s "$(pwd)/waybar" ~/.config
ln -s "$(pwd)/swayimg" ~/.config
ln -s "$(pwd)/zathura" ~/.config
ln -s "$(pwd)/rofi" ~/.config
ln -s "$(pwd)/yazi" ~/.config
ln -s "$(pwd)/tmux" ~/.config
ln -s "$(pwd)/kak" ~/.config
ln -s "$(pwd)/kakoune-lsp" ~/.config
ln -s "$(pwd)/sway" ~/.config
ln -s "$(pwd)/i3status" ~/.config
# ln -s "$(pwd)/wezterm" ~/.config

#   FONTS
FONT_DIR=~/.local/share/fonts/
mkdir -p $FONT_DIR
ln -s "$(pwd)/fonts/"* $FONT_DIR

#   LES TRUCS HYPER
HYPRDIR=~/.config/hypr
mkdir -p $HYPRDIR
ln -s "$(pwd)/hypr/hyprlock.conf" $HYPRDIR
# ln -s "$(pwd)/hypr/hyprland.conf" $HYPRDIR
# ln -s "$(pwd)/hypr/hyprpaper.conf" $HYPRDIR
