mkdir tools
cd tools
apt-add-repository non-free
apt-get install apt-transport-https lsb-release software-properties-common -y
apt-get update
apt-get upgrade -y
apt-get install sudo -y
#add-apt-repository 'deb http://appseclive.org/apt/stable /'

#Set up current user
#adduser $USER sudo

#Get tools that prompt during install out of the way first
apt-get install wireshark -y
apt-get install kismet -y

# Drivers
apt-get install firmware-iwlwifi -y
modprobe -r iwlwifi
modprobe iwlwifi

# Install tools to install or configure other tools
apt-get install vim -y
apt-get install git -y
apt-get install python-pip -y
apt-get install python3-pip -y
apt-get install dirmngr -y
apt-get install autoconf -y
apt-get install libtool -y
apt-get install gcc -y

# System utilities
apt-get install pgp -y
apt-get install finger -y
apt-get install curl -y
apt-get install wget -y
apt-get install screen -y
apt-get install gdb -y

# Network tools
apt-get install nmap -y
apt-get install masscan -y
apt-get install tftp -y
apt-get install netcat -y
apt-get install dnsrecon -y
apt-get install sqlmap -y
apt-get install aircrack-ng -y
apt-get install python-scapy -y
apt-get install tcpdump -y

# Web tools
git clone --depth 1 https://github.com/andresriancho/w3af.git
pip install sslyze
git clone https://github.com/sullo/nikto
#apt-get install owasp-wte-zap -y



# Credential tools
apt-get install john -y
apt-get install hashcat -y
pip install truffleHog
apt-get install hydra -y

# File tools
apt-get install exiftool -y
apt-get install gedit -y
apt-get install binwalk -y

# Azure tools
apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv --keyserver packages.microsoft.com --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF
apt-get update
apt-get install azure-cli -y

git clone https://github.com/libunwind/libunwind
cd libunwind
./autogen.sh
./configure
make
make install prefix=/usr/local
cd ..

wget https://dot.net/v1/dotnet-install.sh
chmod +x dotnet-install.sh
./dotnet-install.sh -c Current
rm dotnet-install.sh

apt-get install libgconf-2-4 -y

mkdir StorageExplorer
cd StorageExplorer
wget https://download.microsoft.com/download/A/E/3/AE32C485-B62B-4437-92F7-8B6B2C48CB40/StorageExplorer-linux-x64.tar.gz
tar -xzf StorageExplorer-linux-x64.tar.gz
rm StorageExplorer-linux-x64.tar.gz
cd ..


# Make contents of tools folder belong to current user
# chown -R $USER *
# chgrp -R $USER * 


