#!/bin/bash

read -p "Enter the package nam which you want to install: " rpm

yum install -y $rpm

systemctl enable $rpm

systemctl start $rpm.service

#read -p "Enter the pacage name: " pkg

status=$(systemctl status $rpm | awk 'NR==3 { print $2 }')

#systemctl status httpd | awk 'NR==3 { print $2 }'

echo "Your package has been installed and status is:  $status"
