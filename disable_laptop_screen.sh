#!/bin/bash
# Check if external monitor is connected
if hyprctl monitors | grep -q "DP-7"; then
    # External monitor connected
    hyprctl keyword monitor "DP-7,preferred,auto,1"
    
    # Move workspaces 1-10 to external monitor
    for i in {1..10}; do
        hyprctl dispatch moveworkspacetomonitor $i DP-7 2>/dev/null
    done
    
    # Disable laptop screen
    hyprctl keyword monitor "eDP-1,disable"
else
    # External monitor not connected
    hyprctl keyword monitor "eDP-1,preferred,auto,1"
fi
