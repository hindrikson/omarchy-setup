#!/bin/sh

cd ~

sudo pacman -Sy --noconfirm --needed \
  kitty \
  stow \
  podman \
  zsh \
  curl \
  yazi \
  zathura \
  keepassxc \
  zathura-pdf-poppler \
  tmux \
  nvm 

# install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    sudo chsh -s "$(which zsh)" "$USER"
fi

# install TPM
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi
