# rasberryPiAP
내용은 두서없이 적어두었습니다.
install.sh 파일의 테스트가 완전히 끝나지 않았기 때문에 작동에 문제가 있을 수도 있습니다.

# 라즈베리파이를 외부입력장치 연결 없이 wifi에 연결할 수 있도록 도와주는 프로그램

sudo apt-get update<br>
sudo apt-get upgrade<br>

sudo apt-get install dnsmasq<br>
sudo apt-get install hostapd<br>
sudo apt-get install python-bottle<br>

위 패키지를 모두 설치한 후 jPi 디렉토리를 홈 디렉토리에 위치시킨다.<br>
$cd ~<br>
$ls |grep jPi<br>
jPi<br><br>

jPi 디렉토리 안에 있는 setup.sh 파일을 실행시킨다.<br>
$cd jPi<br>
$chmod 755 setup.sh
$sudo ./setup.sh<br><br>
$echo "~/jPi/setup.sh" >> /etc/profile
$echo "sudo hostapd /etc/hostapd/hostapd.conf" >> /etc/profile

프로그램 흐름
1. 부팅과 동시에 네트워크 연결 상태를 확인한다.
2. 네트워크에 연결되어있지 않을 경우 ssid='testPi', passwd='Raspberry' 상태로 ap모드를 구동시킨다.
3. 사용자는 wifi가 가능한 장비를 통해 위 ap에 연결한 후 웹브라우저를 열어 '172.24.1.1:8080/login' 에 접속한다.
4. ssid, password 란에 연결하고자 하는 ap의 정보를 입력한 후 connect 버튼을 클릭한다.
5. 입력한 정보를 바탕으로 라즈베리파이가 연결을 시도하고, 성공유무와 관계없이 라즈베리파이가 리붓된다.<br>
5-1. 연결에 성공하였을 경우 라즈베리파이는 네트워크 연결 상태가 된다.<br>
5-2. 연결에 실패하였을 경우 다시 ap모드로 작동하여 위 작업을 반복한다.
