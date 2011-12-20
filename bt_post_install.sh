#!/bin/bash

echo ================================================================
echo BackTrack 5 Post Install script 
echo Installing and performing initial configuration of BackTrack 5
echo http://www.rocketcityhackers.com
echo joethemachine[at]rocketcityhackers.com  - 10/28/2011
echo ================================================================

# Backtrack initial setup script

## Add Oracle repository (needed to install sqlplus oracle client)
echo [+] Adding Oracle Repository
echo [!] Warning 
echo "[!] Preping for sqlplus oracle client"
echo "[!] Error will fail if swap file is less the 1024mb"
echo "deb http://oss.oracle.com/debian/ unstable main non-free" >> /etc/apt/sources.list
wget http://oss.oracle.com/el4/RPM-GPG-KEY-oracle  -O- | sudo apt-key add -
sleep 3
echo [+] Updating Repository
apt-get -qq update 

## Install additional tools from repository
echo [+] INSTALLING ADDITIONAL TOOLS 
apt-get -y -qq install ssh pure-ftpd libmysqlclient-dev hamster tightvncserver python-dev ettercap sendemail vlc netsed arp-scan shutter libssl-dev flashplugin-nonfree-extrasound flashplugin-nonfree mz pyrit oracle-xe-client

## Fix SQLMap by removing original and downloading latest dev version
echo
echo [+] FIXING SQLMAP 
cd /pentest/database
rm -r sqlmap
svn checkout -q https://svn.sqlmap.org/sqlmap/trunk/sqlmap sqlmap

## Install Network Miner to run under WINE
## Reference http://toastresearch.com/2011/09/11/networkminer-on-backtrack-5-r1/#more-550
## Download and install Network Miner
echo
echo  [+] INSTALLING NETWORKMINER 
cd /bin
wget -q http://kegel.com/wine/winetricks
chmod +x winetricks
./winetricks corefonts dotnet20 gdiplus
cd /opt
wget -q http://sourceforge.net/projects/networkminer/files/networkminer/NetworkMiner-1.0/NetworkMiner_1-0.zip/download
unzip download
rm /opt/download

## Create shortcut in WINE
echo
echo [Desktop Entry] > /usr/share/applications/wine-networkminer.desktop
echo Name=NetworkMiner >> /usr/share/applications/wine-networkminer.desktop
echo Exec=wine /opt/NetworkMiner_1-0/NetworkMiner.exe >>/usr/share/applications/wine-networkminer.desktop
echo Terminal=false >> /usr/share/applications/wine-networkminer.desktop
echo Type=Application >> /usr/share/applications/wine-networkminer.desktop
echo Icon=wine-notepad >> /usr/share/applications/wine-networkminer.desktop
echo "Categories=Wine-Programs-Accessories;" >> /usr/share/applications/wine-networkminer.desktop

## Install Easy Creds
echo
echo  [+] INSTALING EASY-CREDS 
mkdir ~/Desktop/easy-creds
cd ~/Desktop/easy-creds
wget http://easy-creds.googlecode.com/files/easy-creds-3.5-BT5.zip
unzip easy-creds-3.5-BT5.zip

echo
echo [+] COMPLETE
echo "Don't forget to update Backtrack Distribution and tools"
echo 
echo 
echo Have Fun...

