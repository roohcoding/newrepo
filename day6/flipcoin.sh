head=0
tails=0
for((i=1; i<=18; i++))
do
	FLIP=$(($(($RANDOM%10))%2))
	if [ $FLIP -eq 1 ]
	then
    		head=$(($head + 1))
	else
      	tails=$(($tails + 1))
fi
done

if [ $head == 11 ]
then
	echo "head"
else
	echo "tails"
fi
