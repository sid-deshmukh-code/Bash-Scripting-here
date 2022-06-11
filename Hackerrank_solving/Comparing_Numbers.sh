#!/bin/bash

# Taking user input 
read x
read y

# Checking conditions

# Less than condition
if [ $x -lt $y ]; then
    echo "X is less than Y"

# Greater than condition
elif [ $x -gt $y ]; then
    echo "X is greater than Y"

# Equal else condition
else
    echo "X is equal to Y"
fi
