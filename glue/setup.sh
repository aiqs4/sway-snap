#!/usr/bin/env bash

set -ex

# Setup DBUS
# sudo snap connect sway:my-login
# sudo snap connect sway:my-policykit
# sudo snap connect sway:my-systemd1

# Add Hardware-Observe
sudo snap connect sway:hardware-observe 

# To launch other snaps
# sudo snap connect sway:app-launch

# Allow access to /etc/debian_version 
# TODO: no really needed
# sudo snap connect sway:system-files

# Allow session observe
sudo snap connect sway:login-session-observe

# Allow to session control
sudo snap connect sway:login-session-control



# For DisplayManager
if [ -d "/usr/share/wayland-sessions/" ] ; then
  sudo ln -s /snap/sway/current/usr/share/wayland-sessions/sway.desktop /usr/share/wayland-sessions/sway.desktop
fi
