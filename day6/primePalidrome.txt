echo "enter the number"
read num 	
for((i=2; i<=num/2; i++)) 
do
  if [ $((num%i)) -eq 0 ] 
  then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
a=0
while [ $num -gt 0 ]
do
	a=$(($a*10+$num%10))
	num=$(($num/10))
done
echo "$a is a palindrome of num"

for((i=2; i<=a/2; i++)) 
do
  if [ $((a%i)) -eq 0 ] 
  then
    echo "$a is not a prime number."
    exit
  fi
done
echo "$a is a prime number."