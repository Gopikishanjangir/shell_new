#!/bin/bash


if [ $(dpkg-query -W -f='${Status}' httpd 2>/dev/null | grep -c "ok installed") -eq 0 ];
then
  yum install -y httpd;
fi
