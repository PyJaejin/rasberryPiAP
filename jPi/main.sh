sleep 10

ping -c5 deu.ac.kr > /dev/null

if [ $? -eq 0 ];
then
        echo good
else
	echo not good
	sudo ifdown wlan0
	sleep 1
	~/jPi/interfaces_ap.sh
	sleep 1
	sudo ifup wlan0
	sleep 1
	~/jPi/start_ap_mode.sh
	sleep 1
	nohup python ~/jPi/login_page.py&
fi
