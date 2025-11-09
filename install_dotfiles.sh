#!/bin/sh

cd ~/omarchy/

ORIGINAL_DIR=$(pwd)
REPO_URL="git@github.com:hindrikson/.dotfiles.git"
REPO_NAME=".dotfiles"

is_stow_installed(){
  pacman -Qi "stow" &> /dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi 

cd ~ 

# check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone."
else
  git clone "$REPO_URL"
fi 

# check if the clone was sucessful
if [ $? -eq 0 ]; then
  echo "Removing old configs"
  rm -rf ~/.config/nvim ~/.local/share/nvim ~/.config/kitty ~/.config/yazi ~/.config/tmux ~/.zshrc
  
  cd "$REPO_NAME"
  stow nvim
  stow tmux
  stow kitty
  stow layouts-tmuxifier
  stow yazi
  stow zathura 
  stow zshrc
else
  echo "Failed to clone repository."
  exit 1
fi

