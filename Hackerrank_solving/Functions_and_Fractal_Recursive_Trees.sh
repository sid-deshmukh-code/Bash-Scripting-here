read n

print () {
    for i in $(seq "$1")
    do
        echo -ne $2
    done
}

loop_print () {
    for i in $(seq "$1")
    do
        echo -ne $2
        print $3 $4
    done
}

if [ $n -eq 5 ]
then
    # Print the trees for iteration #5
    print 100 '_'
    
    j=18
    k=32
    l=1
    m=18
    
    for i in {1..2}
    do
        echo ''
        print $j '_'
        loop_print $k '1' $l '_'
        print $m '_'
        
        ((j += 1))
        ((k -= 16))
        ((l += 2))
        ((m -= 1))
    done
    
    ((n -= 1))
else
    # Print the blanks for iteration #5
    print 100 '_'
    loop_print 2 '\n' 100 '_'
fi

if [ $n -eq 4 ]
then
    # Print the trees for iteration #4
    echo ''
    
    print 19 '_'
    loop_print 16 '1' 3 '_'
    print 17 '_'
    
    echo ''
    
    print 20 '_'
    loop_print 8 '1_1' 5 '_'
    print 16 '_'
    
    for i in {1..2}
    do
        echo ''
        print 21 '_'
        loop_print 8 '1' 7 '_'
        print 15 '_'
    done
    
    ((n -= 1))
else
    # Print the blanks for iteration #4
    loop_print 4 '\n' 100 '_'
fi

if [ $n -eq 3 ]
then
    # Print the trees for iteration #3
    echo ''
    
    print 21 '_'
    loop_print 8 '1' 7 '_'
    print 15 '_'
    
    echo ''
    
    print 22 '_'
    loop_print 4 '1_____1' 9 '_'
    print 14 '_'
    
    echo ''
    
    print 23 '_'
    loop_print 4 '1___1' 11 '_'
    print 13 '_'
    
    echo ''
    
    print 24 '_'
    loop_print 4 '1_1' 13 '_'
    print 12 '_'
    
    for i in {1..4}
    do
        echo ''
        print 25 '_'
        loop_print 4 '1' 15 '_'
        print 11 '_'
    done
    
    ((n -= 1))
else
    # Print the blanks for iteration #3
    loop_print 8 '\n' 100 '_'
fi

if [ $n -eq 2 ]
then
    # Print the trees for iteration #2
    echo ''
    
    print 25 '_'
    loop_print 4 '1' 15 '_'
    print 11 '_'
    
    j=26
    k=13
    l=4
    m=14
    
    for i in {1..7}
    do
        echo ''
        print $j '_'
        loop_print 2 '1' $k '_'
        print $l '_'
        loop_print 2 '1' $k '_'
        print $m '_'
        
        ((j += 1))
        ((k -= 2))
        ((l += 4))
        ((m += 3))
    done
    
    for i in {1..8}
    do
        echo ''
        print 33 '_'
        loop_print 2 '1' 31 '_'
        print 3 '_'
    done
    
    ((n -= 1))
else
    # Print the blanks for iteration #2
    loop_print 16 '\n' 100 '_'
fi

if  [ $n -eq 1 ]
then
    # Print the trees for iteration #1
    j=33
    k=31
    l=3
    
    for i in {1..16}
    do
        echo ''
        print $j '_'
        loop_print 2 '1' $k '_'
        print $l '_'
        
        ((j += 1))
        ((k -= 2))
        ((l += 3))
    done

    for i in {1..16}
    do
        echo ''
        print 49 '_'
        loop_print 1 '1' 50 '_'
    done
else
    # Print the blanks for iteration #1
    loop_print 32 '\n' 100 '_'
fi
