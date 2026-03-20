#!/bin/sh

# install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    sudo chsh -s "$(which zsh)" "$USER"
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
  "$ZSH_CUSTOM/plugins/zsh-autosuggestions"

# vi mode
git clone https://github.com/jeffreytse/zsh-vi-mode \
  "$ZSH_CUSTOM/plugins/zsh-vi-mode"

# timewarrior
git clone https://github.com/svenXY/timewarrior \
  "$ZSH_CUSTOM/plugins/timewarrior"
