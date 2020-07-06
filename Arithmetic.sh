#!/bin/bash -x
#UC1
echo "Welcome to Arithmetic Computation And Sorting Program"
read -p "enter the  first value:" a
read -p "enter the second value:" b
read -p "enter the  third value:" c
echo $a $b $c
#UC2
result1=$(($a+$b*$c))
echo $result1
#UC3
result2=$(($a*$b+$c))
echo $result2
#UC4
result3=$(($c+$a/$b))
echo $result3
#UC5
result4=$(($a%$b+$c))
echo $result4
