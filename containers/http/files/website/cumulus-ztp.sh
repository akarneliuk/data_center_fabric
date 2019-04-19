#!/bin/bash

#Cumulus Linux Autoprovisioning start

sleep 5

net add vrf mgmt
net add time zone 
net add dns nameserver ipv4 192.168.141.143 vrf mgmt
net commit

adduser aaa --disabled-password --gecos "Network Admin User Account"
adduser aaa sudo
echo "aaa:aaa" | chpasswd

exit 0

#Cumulus Linux Autoprovisioning done
