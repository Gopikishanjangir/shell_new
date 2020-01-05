#!/bin/bash

read -p "Enter start or stop to perform action on httpd service: " action 

if [ "${action}" == "start" ]
then
   echo "starting httpd..."
   systemctl start httpd 
   echo "started httpd"

fi 

if [ "${action}" == "stop" ]
then 
   echo "stoping httpd..."
   systemctl stop httpd
   echo "stoped httpd"

fi   
