# Taking input
read exprr

# Here we're using (printf "%.3f")  to get output upto 3 decimals
# And $(echo "scale = 4; $exprr " | bc)   To get 4 decimals step values


printf "%.3f"  $(echo "scale = 4; $exprr " | bc)
