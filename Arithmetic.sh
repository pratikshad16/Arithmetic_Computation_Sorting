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
#UC6
declare -A dict
dict[1]=$result1
dict[2]=$result2
dict[3]=$result3
dict[4]=$result4
echo "Dictionary:" ${dict[@]}
#UC7
for((i=1;i<5;i++))
do
	arr[$i]=${dict[$i]}
done

echo "Required array is :" ${arr[@]}
#Uc8
for(( i=1;i<5;i++ ))
do
	for(( j=$i;j < 5;j ++ ))
	do
		if [ ${arr[i]} -lt ${arr[$j]} ]
		then
			temp=${arr[i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$temp
		fi
	done
done
echo "array in Descending order:"
for (( i=1;i<5;i++ ))
do
	echo ${arr[$i]}
done
echo ${arr[@]}
#UC9
for(( i=1;i<5;i++ ))
do
        for((j=$i;j<5;j++))
        do
                if [ ${arr[i]} -gt ${arr[$j]} ]
                then
                        temp=${arr[i]}
                        arr[$i]=${arr[$j]}
                        arr[$j]=$temp
                fi
        done
done
echo "ARRAY IN ASCENDING ORDER:"
for (( i=1;i<5;i++))
do
	echo ${arr[$i]}
done
echo ${arr[@]}
