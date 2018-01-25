sudo ifdown wlan0
sleep 1
~/jPi/stop_ap_mode.sh
sleep 1
~/jPi/interfaces_wifi.sh
sleep 1
sudo chmod 777 /etc/wpa_supplicant/wpa_supplicant.conf
sleep 1
sudo wpa_passphrase $1 $2 > /etc/wpa_supplicant/wpa_supplicant.conf
sleep 1
sudo ifup wlan0
sleep 1
sudo reboot
