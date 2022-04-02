# Flipping a coin
echo "uc1 begin here.................."
echo " "
echo " Flipping a coin one time check who wins"

num1=$((RANDOM%2))


echo "random number u got $num1"


if [ $num1 -eq 0 ]
then
echo " you got head "

else
echo " you got Tail "
fi

echo " "
echo " "

#uc 2 begin here....................................................................................................

echo " uc2 begin here............................."
# As a simulator flipping coin multiple times and showing no. of times head and tail has won
echo "Flipping a coin multiple times "
read -p "Enter the number how many times want to flip coin " a

headcount=0;
tailcount=0;

for ((i=1;i<=$a;i++))
do
num2=$((RANDOM%2))

if [ $num2 -eq 0 ]
then
headcount=$(($headcount+1))
else
tailcount=$(($tailcount+1))
fi

done

echo "Head wins : $headcount times"
echo "Tail wins : $tailcount times"


echo " "

#Flipping coin again till either of them won 21 times and showing if it's win or lose and by how much
echo "uc 3 begin here..................................."
echo "Flipping coin again till either of them win 21 times and showing who win by how much "
num3=$((RANDOM%2))

headcount1=0;
tailcount1=0;

for ((i=1;i<=44;i++))
do
num3=$((RANDOM%2))

if [ $num3 -eq 0 ] && [ $headcount1 -lt 21 ]
then
headcount1=$(($headcount1+1))
elif [ $num3 -eq 1 ] && [ $tailcount1 -lt 21 ]
then
tailcount1=$(($tailcount1+1))
else 
echo ""
fi

done

echo "Head wins : $headcount1 times"
echo "Tail wins : $tailcount1 times"

#uc3---counting who win by what number 

difference1=$(($headcount1-$tailcount1))
difference2=$(($tailcount1-$headcount1))


if [ $headcount1 -gt $tailcount1 ]
then
echo "Head wins over Tail by $difference1"

elif [ $tailcount1 -gt $headcount1 ]
then
echo "Tail wins over Head by $difference2"



else
echo " It's a tie since headcount and tailcount are equal"
echo "Headcount : $headcount1     Tailcount : $tailcount1 "
fi

