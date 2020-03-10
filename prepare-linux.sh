#!/usr/bin/env bash

# rm wpa_supplicant
sudo systemctl mask wpa_supplicant.service
sudo mv /sbin/wpa_supplicant /sbin/no_wpa_supplicant
sudo pkill wpa_supplicant

# install docker
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi

#reboot
sudo reboot