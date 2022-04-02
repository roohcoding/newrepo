read -p "enter the unit like : fTi , fTm , iTf, mTf" unit
if [ "$unit" == "fTi" ]
then
	echo "enter the feet you want to convert in inch"
	read a
	echo "feet to inch :  $(($a*12)) inch"
elif [ "$unit" == "fTm" ]
then
	echo "enter the feet you want to convert it into meter"
	read a
	echo " feet to meter : $(($a/3)) meter"
elif [ "$unit" == "iTf" ]
then
        echo "enter the inch you want to convert it into feet"
        read a
        echo " inch to feet : $(($a/12)) meter"
elif [ "$unit" == "mTf" ]
then
        echo "enter the meter you want to convert it into feet"
        read a
        echo " meter to feet : $(($a*3)) meter"
fi
