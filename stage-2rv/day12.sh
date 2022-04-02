#!/bin/bash

read -p "Enter first number " a

read -p "Enter second number" b

read -p "Enter Third number " c

echo "$a $b $c"

result1=$(($a+$b*$c))

result2=$(($a*$b+$c))

result3=$(($c+$a/$b))

result4=$(($a%$b+$c))

echo "$result1 $result2 $result3 $result4"

declare -A dict
dict=( ['result1']=77
       ['result2']=53
       ['result3']=8
       ['result4']=13  )

for item in "${!dict[@]}"
do
    echo "$item => ${dict[$item]}"
done

comparray=($result1 $result2 $result3 $result4)

echo "Array : ${comparray[*]}"


# Sorting the array in Bash
# using Bubble sort

# Static input of Array


echo "Array in original order"
echo ${comparray[*]}



#programming for array in ascending order

# Performing Bubble sort 
for ((i = 0; i<4; i++))
do
    
    for((j = 0; j<4-i-1; j++))
    do
    
        if [ ${comparray[j]} -gt ${comparray[$((j+1))]} ]
        then
            # swap
            temp=${comparray[j]}
            comparray[$j]=${comparray[$((j+1))]}  
            comparray[$((j+1))]=$temp
        fi
    done
done

echo "Array in ascending order :"
echo ${comparray[*]}


#programming for array in descending order

echo "Array in original order"

comparray=($result1 $result2 $result3 $result4)


echo ${comparray[*]}

# Performing Bubble sort
for ((i = 0; i<4; i++))
do

    for((j = 0; j<4-i-1; j++))
    do

        if [ ${comparray[j]} -lt ${comparray[$((j+1))]} ]
        then
            # swap
            temp=${comparray[j]}
            comparray[$j]=${comparray[$((j+1))]}
            comparray[$((j+1))]=$temp
        fi
    done
done

echo "Array in descending order :"
echo ${comparray[*]}
