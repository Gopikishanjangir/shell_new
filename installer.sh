#!/bin/bash

#echo "HTTPD installing"

#yum install -y httpd

#echo "apache is downloaded"

#systemctl enable httpd

#echo "apache is enable"

#systemctl start httpd.service

#echo "apache is restart"

systemctl status httpd | awk 'NR==3{print $Active}'
