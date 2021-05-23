# !/bin/bash 
max=10
for (( i=2; i <= $max; ++i ))
do
    echo "$i"
done

#syntax for loop

: <<'end_long_comment'

for (( initializer; condition; incrementor/decrementor ))
do
	stagemets;
	stagemets;
	stagemets;
done
end_long_comment

