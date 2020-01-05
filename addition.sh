#!/bin/bash
read -p "Enter the first number: " s
read -p "Enter the second number: " d

result=`expr "$s * $d" | bc `
echo "The additional of $a and $b is: $result"
