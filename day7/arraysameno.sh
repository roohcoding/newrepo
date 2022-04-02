
#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
#etc and store them in an array

echo "Number range 0-100 with digits repeated twice are printed below "

count=0

for((i=1;i<=100;i++))
do
if [ $i -gt 9 ]
then
f=$(($i%10))
s=$(($i/10))
if [ $f = $s ]
then
echo "$i"

sameno[$count]=$i

count=$(($count+1))



fi
fi
done

echo "array for same number: ${sameno[*]} "
