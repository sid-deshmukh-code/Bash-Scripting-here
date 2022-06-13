function line()
{
    local n=$1
    (for ((i=0;i<$n;++i)); do printf "_"; done)
}

function eol()
{
    printf "\n"
}

function draw_y()
{
   local n=$1
   [ $n -gt 16 ] && return
   
   local count=$((16/$n))
   for ((i=0;i<$n;++i)); do
       line 18
       for ((j=0;j<$count;++j)); do
           line $(($n+$i-1))
           printf "1"
           line $((2*($n-$i)-1))
           printf "1"
           line $(($n+$i))
       done
       line 18
       eol
   done
   for ((i=0;i<$n;++i)); do
       line 18
       for ((j=0;j<$count;++j)); do
          line $((2*$n-1))
          printf "1"
          line $((2*$n))
      done
      line 18
      eol
   done
   
   draw_y $(($n*2))
}

function draw()
{
    local iter=$1
    local size=$((2**(5-$iter)))

    for ((i=0;i<2*$size-1;++i)); do
        line 100
        eol
    done
    
    draw_y $size
}

read iter
draw $iter
