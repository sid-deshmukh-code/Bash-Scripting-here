# Taking input
read num

# Declaring needed variables
sum=0
i=0

# Using loop to get sum
while [ $i -lt $num ]
do
    read x
    let sum=sum+x
    let i=i+1


done

# Printing output by dividing it from user's first input

printf "%0.3f" $(echo "scale=5; $sum / $num" | bc -l)

# _____BYEEEE______
