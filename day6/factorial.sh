echo "enter the number "
read n
temp=1
for((i=$n; i>=2; i--))
do

temp=$((temp * i))

done 

echo "factorial of n is : $temp"
