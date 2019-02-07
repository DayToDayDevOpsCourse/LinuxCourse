# !/bin/bash 
# To declare static Array 
arr=(1 2 3 4 5) 

# loops iterate through a 
# set of values until the 
# list (arr) is exhausted 
for i in "${arr[@]}"
do
	# access each element 
	# as $i 
	echo $i 
done
