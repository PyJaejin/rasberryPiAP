sudo mv ~/jPi/interfaces.wifimode /etc/network
sudo mv ~/jPi/interfaces.apmode /etc/network

sudo mv ~/jPi/dnsmasq.conf /etc/dnsmasq.conf
sudo mv ~/jPi/hostapd.conf /etc/hostapd/

sudo mv ~/jPi/rc.local /etc/rc.local

echo "~/jPi/main.sh" >> /etc/profile
