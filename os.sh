#!/bin/bash
#copyright©rootM3eX
#aoc

figlet -f pagga Os Termux | lolcat
 echo ""
echo ""
echo "                           copyright©rootM3eX"
echo "_________________________________"
echo " {1}> Kali-Linux "
echo " {2}> Ubuntu "
echo " {3}> Arch-Linux "
echo " {4}> fedora"
echo " {5}> Debian-Os "
echo " {00}> Exit "
echo "_________________________________"
echo ""

####################################################
# CTRL + C
####################################################
trap ctrl_c INT
ctrl_c() {
clear
echo "{+}> (Ctrl + C ) Detected, Trying To Exit ... "
echo "{+}> Thanks All..."
sleep 1
echo ""
echo "{+}> See You Next Time... "
sleep 1
exit
}

read -p "Silakan Di pilih : " aoc

################################
## KALI LINUX.               ###
################################

if [ $aoc = 1 ] || [ $aoc = 01 ]
then
clear
figlet -f slant Kali Linux | lolcat
echo ""
echo "√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√"
echo "   [ 1 ]  arm64/armv8 (64 bit)"
echo "   [ 2 ] arm/armhf/armv7 (32 bit)"
echo "   [ 3 ] 64 bit minimal version"
echo "   [ 4 ] Exit "
echo "√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√√"
echo ""

read -p "Pilih : " kl
fi

if [ $kl = 1 ] || [ $kl = 01 ]
then
clear
echo "📌INSTALL KALI LINUX📌"
echo
echo
echo " Tunggu Proses..........."
clear
apt install proot wget tar -y
echo " Tunggu lagi yaa gan/sis :v "
wget https://build.nethunter.com/kalifs/kalifs-latest/kalifs-arm64-full.tar.xz
echo
proot --link2symlink tar -xf kalifs-arm64-full.tar.xz
cd kali-arm64 && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r kali-arm64 -b /dev/ 
-b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games 
TERM=$TERM /bin/bash --login" > startkali

chmod 777 startkali && termux-fix-shebang startkali

echo ""
echo " Silakan Ketik (./startkali) untuk menjalankannya "
echo ""
fi

if [ $kl = 2 ] || [ $kl = 02 ]
then
clear
echo " 📌INSTALL KALI LINUX📌"
echo
echo
echo " Tunggu Proses............"
clear
apt install proot wget tar -y
echo " Tunggu Lagi yaa gan/sis :v "
wget 
https://build.nethunter.com/kalifs/kalifs-latest/kalifs-armhf-minimal.tar.xz
echo
proot --link2symlink tar -xf kalifs-armhf-minimal.tar.xz
cd kali-armhf && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r kali-armhf -b /dev/ -b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b /system -b /mnt /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM /bin/bash --login" > startkali

chmod 777 startkali && termux-fix-shebang startkali
echo ""
echo " Silakan Ketik (./startkali) untuk menjalankannya "
echo ""
fi

if [ $kl = 3 ] || [ $kl = 03 ]
then
clear
echo " 📌INSTALL KALI LINUX📌"
echo
echo
echo " Tunggu Proses..........."
clear
apt install proot wget tar -y
echo " Tunggu lagi yaa gan/sis :v "
wget 
https://build.nethunter.com/kalifs/kalifs-latest/kalifs-arm64-minimal.tar.xz
echo
proot --link2symlink tar -xf kalifs-arm64-minimal.tar.xz
cd kali-arm64 && echo "nameserver 8.8.8.8" > etc/resolv.conf

cd ../ && echo "proot --link2symlink -0 -r kali-arm64 -b /dev/ 
-b /sys/ -b /proc/ -b /data/data/com.termux/files/home -b 
/system -b /mnt /usr/bin/env -i HOME=/root 
PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games 
TERM=$TERM /bin/bash --login" > startkali

chmod 777 startkali && termux-fix-shebang ./startkali

echo ""
echo " Silakan ketik (./startkali) untuk menjalankannya "
echo ""
fi

if [ $kl = 4 ] || [ $kl = 04 ]
then
clear
exit
fi

#####################################
# UBUNTU.                         ###
#####################################

if [ $aoc = 2 ] || [ $aoc = 02 ]
then
clear
echo " Tunggu yoo mank :v "
pkg install wget proot -y
echo " Menginstall Ubuntu Di termux.........."
cd $HOME
mkdir Ubuntu-Os
cd Ubuntu-Os
pkg install wget -y
wget https://raw.githubusercontent.com/Neo-Oli/termux-ubuntu/master/ubuntu.sh
chmod +x ubuntu.sh
echo
echo
bash ubuntu.sh
cd $HOME
cd Ubuntu-Os
bash start.sh
fi

###############################
# ARCH LINUX.               ###
###############################

if [ $aoc = 3 ] || [ $aoc = 03 ]
then
clear
echo "📌INSTALL ARCH-LINUX📌"
echo
echo
echo " Tunggu yoo bozz ku :* " | lolcat
echo
pkg install wget -y
cd $HOME
mkdir Arch-Os
cd Arch-Os
wget https://raw.githubusercontent.com/sdrausty/TermuxArch/master/setupTermuxArch.sh
bash setupTermuxArch.sh
fi

################################
## FEDORA-OS.                ###
################################

if [ $aoc = 4 ] || [ $aoc = 04 ]
then
clear
clear
echo " 📌INSTALL FEDORA-OS📌 "
echo
echo
pkg install wget -y
cd $HOME
mkdir Fedora-Os
cd Fedora-Os
wget https://raw.githubusercontent.com/nmilosev/termux-fedora/master/$
chmod +x termux-fedora.sh
clear
echo
echo
echo
echo
bash termux-fedora.sh
fi

################################
## DEBIAN-OS.                ###
################################

if [ $aoc = 5 ] || [ $aoc = 05 ]
then
clear
echo " 📌Install Debian-Os📌 "
cd $HOME
apt update
apt install wget -y
hash -r
sleep
wget https://raw.githubusercontent.com/sp4rkie/debian-on-termux/master/debian_on_termux.sh
sh debian_on_termux.sh
tail -F $HOME/deboot_debian/debootstrap/debootstrap.log
echo
echo
echo "type below command to run Debian os in Termux..!!"
fi

##########
# EXIT ###
##########

if [ $aoc = 00 ]
then
clear
echo " Bye ❌ ----------> "
exit
fi
