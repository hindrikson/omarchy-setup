#!/bin/sh

# tmuxifier
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.config/tmux/tmux.conf

curl -fsSL https://raw.githubusercontent.com/joaofelipegalvao/omarchy-tmux/main/install.sh | bash



