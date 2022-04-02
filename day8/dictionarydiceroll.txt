
#1st question.........................................................
echo "step a.........................................................."
echo ""
echo "Rolling a dice and finding the number got "

num1=$((RANDOM%6+1))

echo "You got number - $num1 in dice "

#2nd question.........................................................


echo "step b.........................................................."

echo ""
declare -A diceroll

read -p "Enter the number how many times you want to roll the Dice " n

for ((i=1;i<=$n;i++))
do
num2=$((RANDOM%6+1))
diceroll[value$i]=$num2
echo "In roll no. $i, you got number in Dice- $num2 "
done

#3rd question..........................................................
echo "step c.........................................................."

echo " "
echo "Key of diceroll dictionary is : ${!diceroll[*]} "
echo "Stored value of diceroll dictionary is : ${diceroll[*]} "

#4th question..........................................................
echo "step d.........................................................."

echo " "

count1=0
count2=0
count3=0
count4=0
count5=0
count6=0



while (($count1 != 10 && $count2 != 10 && $count3 != 10 && $count4 != 10 && $count5 != 10 && $count6 != 10 ))
do

num3=$((RANDOM%6+1))

if [ $num3 -eq 1 ] && [ $count1 -lt 10 ]
then
count1=$(($count1+1))


elif [ $num3 -eq 2 ] && [ $count2 -lt 10 ]
then
count2=$(($count2+1))


elif [ $num3 -eq 3 ] && [ $count3 -lt 10 ]
then
count3=$(($count3+1))


elif [ $num3 -eq 4 ] && [ $count4 -lt 10 ]
then
count4=$(($count4+1))


elif [ $num3 -eq 5 ] && [ $count5 -lt 10 ]
then
count5=$(($count5+1))


elif [ $num3 -eq 6 ] && [ $count6 -lt 10 ]
then
count6=$(($count6+1))

fi

done

echo "$count1"
echo "$count2"
echo "$count3"
echo "$count4"
echo "$count5"
echo "$count6"


#5th question..........................................................
echo "step e.........................................................."

if [ $count1 -gt $count2 ] && [ $count1 -gt $count2 ] && [ $count1 -gt $count3 ] && [ $count1 -gt $count4 ] && [ $count1 -gt $count5 ] && [ $count1 -gt $count6 ]
then
echo "Number that appears maximum time is 1 "

elif [ $count2 -gt $count1 ] && [ $count2 -gt $count3 ] && [ $count2 -gt $count4 ] && [ $count2 -gt $count5 ] && [ $count2 -gt $count6 ]
then
echo "Number that appears maximum time is 2 "

elif [ $count3 -gt $count1 ] && [ $count3 -gt $count2 ] && [ $count3 -gt $count4 ] && [ $count1 -gt $count5 ] && [ $count3 -gt $count6 ]
then
echo "Number that appears maximum time is 3 "

elif [ $count4 -gt $count1 ] && [ $count4 -gt $count2 ] && [ $count4 -gt $count3 ] && [ $count4 -gt $count5 ] && [ $count4 -gt $count6 ]
then
echo "Number that appears maximum time is 4 "

elif [ $count5 -gt $count1 ] && [ $count5 -gt $count2 ] && [ $count5 -gt $count3 ] && [ $count5 -gt $count4 ] && [ $count5 -gt $count6 ]
then
echo "Number that appears maximum time is 5 "

elif [ $count6 -gt $count1 ] && [ $count6 -gt $count2 ] && [ $count6 -gt $count3 ] && [ $count6 -gt $count4 ] && [ $count6 -gt $count5 ]
then
echo "Number that appears maximum time is 6 "
fi

#for minmum no................................................................

if [ $count1 -lt $count2 ] && [ $count1 -lt $count2 ] && [ $count1 -lt $count3 ] && [ $count1 -lt $count5 ] && [ $count4 -lt $count6 ]
then
echo "Number that appears minimum time is 1 "

elif [ $count2 -lt $count1 ] && [ $count2 -lt $count3 ] && [ $count2 -lt $count4 ] && [ $count2 -lt $count5 ] && [ $count4 -lt $count6 ]
then
echo "Number that appears minimum time is 2 "

elif [ $count3 -lt $count1 ] && [ $count3 -lt $count2 ] && [ $count3 -lt $count4 ] && [ $count1 -lt $count5 ] && [ $count4 -lt $count6 ]
then
echo "Number that appears minimum time is 3 "

elif [ $count4 -lt $count1 ] && [ $count4 -lt $count2 ] && [ $count4 -lt $count3 ] && [ $count4 -lt $count5 ] && [ $count4 -lt $count6 ]
then
echo "Number that appears minimum time is 4 "

elif [ $count5 -lt $count1 ] && [ $count5 -lt $count2 ] && [ $count5 -lt $count3 ] && [ $count5 -lt $count4 ] && [ $count5 -lt $count6 ]
then
echo "Number that appears minimum time is 5 "

elif [ $count6 -lt $count1 ] && [ $count6 -lt $count2 ] && [ $count6 -lt $count3 ] && [ $count6 -lt $count4 ] && [ $count6 -lt $count5 ]

then
echo "Number that appears minimum time is 6 "
fi
