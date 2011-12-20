#!/bin/bash  

echo ================================================================
echo BackTrack 5 Updater
echo Updates distribution and several common tools
echo http://www.rocketcityhackers.com
echo joethemachine[at]rocketcityhackers.com
echo ================================================================


echo
echo [+] Updating distribution...
##apt-get -qq update && apt-get -y -q upgrade && apt-get -y -q dist-upgrade && apt-get -qq autoremove -y && apt-get -y -qq autoclean
echo
echo [+] Updating tools...


[[ -d /pentest/exploits/framework/ ]]  && echo Updating Metasploit && cd /pentest/exploits/framework/ && svn up -q
[[ -d /pentest/exploits/framework3/ ]] && echo Updating Metasploit3 && cd /pentest/exploits/framework3/ && svn up -q
[[ -d /pentest/exploits/framework2/ ]] && echo Updating Metasploit2 && cd /pentest/exploits/framework2/ && svn up -q
[[ -d /pentest/exploits/set/ ]]        && echo warn Updating SET && cd /pentest/exploits/set/ && svn up -q
[[ -d /pentest/exploits/fasttrack/ ]]  && echo [+] Updating Fasttrack && cd /pentest/exploits/fasttrack/ && svn up -q
[[ -d /pentest/web/w3af/ ]]            && echo [+] Updating w3af && cd /pentest/web/w3af/ && svn up -q
[[ -d /pentest/web/websecurify/ ]]     && echo [+] Updating Websecurify && cd /pentest/web/websecurify/ && svn up -q
[[ -d /pentest/web/waffit/ ]]          && echo [+] Updating waffit && cd /pentest/web/waffit/ && svn up -q
[[ -d /pentest/web/wapiti/ ]]          && echo [+] Updating Wapiti && cd /pentest/web/wapiti/ && svn up -q
[[ -d /pentest/web/dirbuster/ ]]       && echo [+] Updating Dirbuster && cd /pentest/web/dirbuster/ && svn up -q
[[ -d /pentest/web/sslstrip/ ]]        && echo [+] Updating Sslstrip && cd /pentest/web/sslstrip/ && svn up -q
[[ -d /pentest/web/skipfish/ ]]        && echo [+] Updating Skipfish && cd /pentest/web/skipfish/ && svn up -q
[[ -d /pentest/web/xsser/ ]]           && echo [+] Updating xsser && cd /pentest/web/xsser/ && svn up -q
[[ -d /pentest/voip/sipvicious/ ]]     && echo [+] Updating sipvicious && cd /pentest/voip/sipvicious/ && svn up -q
[[ -d /pentest/web/fimap/ ]]           && echo [+] Updating fimap && cd /pentest/web/fimap/ && svn up -q
[[ -d /pentest/web/nikto/ ]]           && echo [+] Updating Nikto && cd /pentest/web/nikto/ && ./nikto.pl -update
[[ -d /pentest/database/sqlmap/ ]]     && echo [+] Updating Sqlmap && cd /pentest/database/sqlmap/ && svn up -q
[[ -d /pentest/database/sqlninja/ ]]   && echo [+] Updating Sqlninja && cd /pentest/database/sqlninja/ && svn up -q
[[ -d /pentest/wireless/aircrack-ng/ ]]&& echo [+] Updating Airdump && cd /pentest/wireless/aircrack-ng/ && svn up -q; airodump-ng-oui-update
[[ -d /pentest/wireless/giskismet/ ]]  && echo [+] Updating Giskismet && cd /pentest/wireless/giskismet/ && svn up -q
[[ -d /pentest/wireless/wepcrack/ ]]   && echo [+] Updating Wepcrack && cd /pentest/wireless/wepcrack/ && svn up -q

