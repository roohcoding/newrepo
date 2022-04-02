
echo "Question 1............................................."

num1=$((RANDOM%900+100))
num2=$((RANDOM%900+100))
num3=$((RANDOM%900+100))
num4=$((RANDOM%900+100))
num5=$((RANDOM%900+100))
num6=$((RANDOM%900+100))
num7=$((RANDOM%900+100))
num8=$((RANDOM%900+100))
num9=$((RANDOM%900+100))
num10=$((RANDOM%900+100))

random=($num1 $num2 $num3 $num4 $num5 $num6 $num7 $num8 $num9 $num10)
echo "random Array : ${random[*]}"



echo ""
echo "Question 2..............................................."

#sorting array value in ascending order...


for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [ ${random[j]} -gt ${random[$((j+1))]} ]
        then
            # swap
            temp=${random[j]}
            random[$j]=${random[$((j+1))]}
            random[$((j+1))]=$temp
        fi
    done
done


echo " 2nd Maximum value is ${random[8]}"



#sorting array value in descending order...


for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [ ${random[j]} -lt ${random[$((j+1))]} ]
        then
            # swap
            temp=${random[j]}
            random[$j]=${random[$((j+1))]}
            random[$((j+1))]=$temp
        fi
    done
done


echo "2nd smallest element is ${random[8]}"
