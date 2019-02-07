# !/bin/bash
# To declare static Array
arr=(branch1 barnch2 branch3 branch4 branch5)

# loops iterate through a
# set of values until the
# list (arr) is exhausted
for i in "${arr[@]}"
do
        # access each element
        # as $i
        echo $i
done
