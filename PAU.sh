#!/bin/bash

figlet -f slant.flf "PAU-PAU" | lolcat
echo ""
echo "Author        : ~TKKall" | lolcat
echo "Contact       : dedehankaljr123@gmail.com" | lolcat
echo "Instagram     : @AttackOfCyber" | lolcat
echo "Crew          : Attack Of Cyber (AOC) " | lolcat
echo "Blog AOC      : http://www.attackofcyber.blogspot.com " | lolcat
echo ""

echo "============================================"
     echo " (1) Nmap Scanning " | lolcat
echo "============================================"
     echo " (2) Tester Vuln by: VinceId " | lolcat
echo "============================================"
     echo " (3) Spammer " | lolcat
echo "============================================"
     echo " (4) Math - Tool " | lolcat
echo "============================================"
     echo " (5) Tools Installer OS by: RootM3X " | lolcat
echo "============================================"
     echo " (6) Info " | lolcat
echo "============================================"
     echo " (7) Keluar Gih Sana " | lolcat
echo ""

read -p "~RootTKKall" menu

if [ $menu = 1 ] || [ $menu = 1 ]
then
clear
apt update && apt upgrade
pkg install nmap
echo " Masukan URL " | lolcat
read "~RootTKKall" web
nmap $web
date | lolcat
fi

if [ $menu = 2 ] || [ $menu = 2 ]
then
clear
sh vinceid.sh
fi

if [ $menu = 3 ] || [ $menu = 3 ]
then
clear
sh LITESPAM.sh
fi

if [ $menu = 4 ] || [ $menu = 4 ]
then
clear
python2 tool.py
fi

if [ $menu = 5 ] || [ $menu = 5 ]
then
clear
sh os.sh
fi

if [ $menu = 6 ] || [ [ $menu = 6 ]
then
clear
figlet -f slant.flf " INFOMARSI " | lolcat
echo ""
echo " Dibuat Oleh  : ~TKKall " | lolcat
echo " INSTAGRAM    : @hankal_45 " | lolcat
echo " BLOG AOC     : http://www.attackofcyber.blogspot.com" | lolcat
echo " Partner Team : TECH5 " | lolcat
echo ""
sleep 1

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo "Jangan mendengarkan kata kata orang lain tapi dengar lah kata hati kita sendiri karna kita bukan hidup dari dia " | lolcat
echo " ~NitrousRobz " | lolcat
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
echo "Kita harus berusaha, berdoa dan belajar." | lolcat
echo "Seseorang termotivasi dari kesuksesannya saja namun tidak dengan kegagalannya," | lolcat
echo "kitajuga harus belajar dari kegagalannya seperti apa, perjuangannya seperti apa." | lolcat
echo "Barulah kita akan menuju kesuksesan." | lolcat
echo "Tanpa doa,berusaha dan belajar? Mustahil untuk meraihnya" | lolcat
echo " ~RootTKKall " | lolcat
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
fi

if [ $menu = 7 ] || [ $menu = 7 ]
then
clear
date | lolcat
fi
