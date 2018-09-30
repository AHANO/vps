#!/bin/bash
###vps packets needed
### Tested on debian wheezy 9
### To run directly
### bash <(curl -s https://raw.githubusercontent.com/axano/vps/master/setup.sh)
### usefull commands 
### screen # to start screen
###  Hit Ctrl + A and then Ctrl + D # To disconnect (but leave the session running)
### screen -r # to connect to running session
### Hit Ctrl + A and then C in immediate succession. You will see a new prompt.
### Hit Ctrl + A and then Ctrl + A  # to switch screen window
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
apt-get update
apt-get install bash-completion
apt-get install nmap -y
apt-get install metasploit-framework -y
apt-get install sqlmap -y
apt-get install apache2 -y
apt-get install netcat -y
apt-get install screen -y
apt-get install proxychains -y

### TOR section
echo "deb-src https://deb.torproject.org/torproject.org stretch main" >> /etc/apt/sources.list
echo "deb https://deb.torproject.org/torproject.org stretch main" >> /etc/apt/sources.list
gpg2 --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg2 --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add 
apt-get update
install tor deb.torproject.org-keyring
service tor start
### https://www.sunnyhoi.com/how-to-setup-proxychains-with-tor-in-kali-linux/
echo "socks5  127.0.0.1  9050"  >> /etc/proxychains.conf
echo "OLD IP"
curl icanhazip.com
echo "NEW IP"
proxychains curl icanhazip.com
