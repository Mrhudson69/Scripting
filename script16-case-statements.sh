#!/bin/bash
finished=0

sleep_time() {
    sleep 0.2s
}

while [ $finished -ne 1 ]
do

echo "What is your favroute linux disctribution:?"

echo "1 - Ubuntu"
sleep_time
echo "2 - Debian"
sleep_time
echo "3 - Fedora"
sleep_time
echo "4 - Redhat"
sleep_time
echo "5 - CentOS"
sleep_time
echo "6 - Something else..."
sleep_time
echo "7 - Exit the script"

read distro;

case $distro in
    1) echo "Ubuntu is a great distro";;
    2) echo "Debian is a great distro";;
    3) echo "Fedora is a great distro";;
    4) echo "Redhat is a great distro";;
    5) echo "CentOS is a great distro";;
    6) echo "There are many disctributions out there.";;
    7) echo "Exiting the script";
        finished=1;;
    *) echo "You didn't enter an appropraite choice";;

esac

done



