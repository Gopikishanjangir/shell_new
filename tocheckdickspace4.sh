#!/bin/bash

for in in 13.233.236.160 13.233.142.33 13.233.229.145

do

df -h /run | awk '{print $5 " " $1}'
df -h / | sed -n '2p' | awk '{print $5 " " $1}' 

done
