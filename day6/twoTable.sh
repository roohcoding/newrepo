echo "Enter a Number"
read a
i=1
n=2
c=$(($n**$a))  
c=$(($c/2)) 
echo "table of 2 :"
while [ $i -le $c ]
do
          echo "$(( n * i ))"
          i=$(( i + 1 ))
done

