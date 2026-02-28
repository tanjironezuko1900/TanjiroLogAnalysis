#!/bin/bash


VERSION='1.0'
AUTHOR='tanjironezuko1900'

clear

figlet -f big TANJIRO LOG ANALYSER

LOGCMD='journalctl'
echo
echo "=======LOG ANALYSER======="
echo
echo "1) Failed Login Attempts"
echo "2) Suspicious IP Addresses"
echo "3) Full Report"
echo "4) Exit"
echo
echo 'Enter your choice:'
read choice

if [ "$choice" -eq 1 ]; then
	echo
	echo "Failed Login Attempts"
	echo
	count=$($LOGCMD | grep -Ei "FAILED SU|failed password" | wc -l)
	echo "Total Attempts: $count"
fi

if [ "$choice" -eq 2 ]; then
	echo
	echo "Suspicious IP Addresses:"
	echo

	ips=$($LOGCMD | grep -Ei 'failed password' | awk '{print $11}' | sort | uniq -c)

	if [ -z "$ips" ]; then
		echo "No suspicious IPs found"
	else
		echo "$ips"
	fi
	echo "Local Login Attacks:"

	localcount=$($LOGCMD | grep -Ei "FAILED SU" | wc -l)
	if [ -z '$localcount' ]; then
		echo 'No local login attacks'
	else
		echo "$localcount local login attacks"
	fi
fi


if [ "$choice" -eq 3 ]; then
	echo
	echo "===== FULL REPORT ====="
	echo

	count=$($LOGCMD | grep -Ei 'FAILED SU|failed password' | wc -l)

	echo "Total Failed Attempts: $count"
	echo
	echo
	echo
        echo "Suspicious IP Addresses:"
        echo

        ips=$($LOGCMD | grep -Ei 'failed password' | awk '{print $11}' | sort | uniq -c)

        if [ -z "$ips" ]; then
                echo "No suspicious IPs found"
        else
                echo "$ips"
        fi
	echo "Local Login Attacks:"

        localcount=$($LOGCMD | grep -Ei "FAILED SU" | wc -l)
        if [ -z '$localcount' ]; then
                echo 'No local login attacks'
        else
                echo "$localcount local login attacks"
        fi
fi

if [ "$choice" -eq 4 ]; then
	exit
fi
