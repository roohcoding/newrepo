echo "enter a"
read a
echo "enter b"
read b
echo "enter c"
read c
A=$(($a+$b*$c))
B=$(($a%$b+$c))
C=$(($c+$a/$b))
D=$(($a*$b+$c))
echo "value of a + b * c is : $A" 

echo "value of a % b + c is : $B"

echo "value of c + a / b is : $C"

echo "value of a * b + c is : $D"
