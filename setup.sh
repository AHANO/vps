###vps packets needed
wget -q -O - https://archive.kali.org/archive-key.asc  | apt-key add
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
apt-get update
apt-get install nmap -y
apt-get install metasploit-framework -y
apt-get install sqlmap -y
apt-get install apache2 -y
