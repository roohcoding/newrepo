a=$(($RANDOM % 999 + 100))
b=$(($RANDOM % 999 + 100))
c=$(($RANDOM % 999 + 100))
d=$(($RANDOM % 999 + 100))
e=$(($RANDOM % 999 + 100))
echo "5 random values are : $a $b $c $d $e "

if [ $a > $b && $a > $c && $a > $d && $a > $e ]
then
	echo " maximum number is : $a"
elif[ $b > $c && $b > $d && $b > $e ]
then
	echo "maximum number is : $b"
elif [ $c > $d && $c >$e]
then
	echo "maximum number is : $c"
elif [ $d > $e ]
then
	echo "maximum number is : $d"
else
then
	echo " maximum number is : $e"
fi
 
	 

