#!/bin/bash

cmd_line_args=$#

if [ $cmd_line_args -eq 2 ]
then
  a=$1
  b=$2
  result=$((a+b))
  echo= "this is additon: $result"
fi
