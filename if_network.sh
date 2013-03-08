#!/bin/bash


if ! /bin/egrep -q "eth3" /etc/network/interfaces
then
  echo "auto eth3" >> /etc/network/interfaces ;
  echo "iface eth3 inet static" >> /etc/network/interfaces ;
  echo "      address 192.168.16.52" >> /etc/network/interfaces ;
  echo "      netmask 255.255.255.0" >> /etc/network/interfaces ;
  /sbin/ifup eth3 ;
fi
