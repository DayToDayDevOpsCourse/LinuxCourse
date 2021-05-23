# !/bin/bash 
max=10
for (( i=2; i <= $max; ++i ))
do
    echo "$i"
done

#syntax for loop

: <<'multi_line_comment'

for (( initializer; condition; incrementor/decrementor ))
do
	stagemets;
	stagemets;
	stagemets;
done
multi_line_comment

