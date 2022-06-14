
while read line
do
# using cut command to cut line upto 3 letters
cut -c3 <<< "$line"
done


# Second solution
# cut -c3
