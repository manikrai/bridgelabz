read -p "Enter your number: " number1
read -p "Enter your Number: " number2
read -p "Enter your Number: " number3
a=$number1
b=$number2
c=$number3
operation1=$(($number1+$number2*$number3))
echo "first computation is (a+b*c): $operation1"
operation2=$(($number1*$number2+$number3))
echo "second computation is (a*b+c): $operation2"
operation3=$(($number1+$number2/$number3))
echo "third computation is(c+a/b): $operation3"
operation4=$(($number1%$number2+$number3))
echo "fourth computation is(a%b+c): $operation4"
declare -A computation

computation[comp1]=$operation1
computation[comp2]=$operation2
computation[comp3]=$operation3
computation[comp4]=$operation4

echo "Ductionary is: ${computation[*]}"
echo "Dictionary keys ${!computation[*]}"

array=($operation1 $operation2 $operation3 $operation4)
echo "Array: ${array[*]}"

echo "Array in original order"
echo "${array[*]}"

for((i = 0; i<4; i++))
do
   for((j = 0; j<4-i-1; j++))
    do
       if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
             temp=${array[j]}
             array[$j]=${array[$((j+1))]}
             array[$((j+1))]=$temp
        fi
     done
done
echo "computation sorted in ascending order as"
echo "${array[*]}"


echo "Array in original order"
array=($operation1 $operation2 $operation3 $operation4)

echo "${array[*]}"

for ((i = 0; i<4; i++))
do
    for((j = 0; j<4-i-1; j++))
    do
       if [ ${array[j]} -lt ${array[$((j+1))]} ]
        then
             temp=${array[j]}
              array[$j]=${array[$((j+1))]}
              array[$((j+1))]=$temp
         fi
done
done
echo "Array in descending order :"
echo "${array[*]}"
