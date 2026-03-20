#!/bin/sh

. ./hyprland_install_overrides.sh
. ./miniforge.sh
. ./install_basic.sh
. ./install_dotfiles.sh
. ./productivity_tools.sh
. ./install_others.sh
. ./install_omz.sh


cd ~/omarchy-setup/


echo "Done! Rebooting in 5 seconds..."
sleep 5
reboot
