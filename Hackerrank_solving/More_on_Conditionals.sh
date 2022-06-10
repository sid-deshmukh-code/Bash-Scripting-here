function readInt {
    read line
    echo $line
}
# created a function to get user input 




a=$(readInt)
b=$(readInt)
c=$(readInt)
#And here we're storing user input in variables

if [ $a = $b ] && [ $a = $c ]; then
    echo "EQUILATERAL";
    # Checking all sides are equal to each other
    
    
    
elif [ $a = $b ] || [ $a = $c ] || [ $b = $c ]; then
    echo "ISOSCELES";
    
    #checking any two si9des are same to each other


else
    echo "SCALENE";
    # ELSe
fi
