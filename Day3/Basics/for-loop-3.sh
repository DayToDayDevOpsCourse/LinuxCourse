#!/bin/sh

#Run this command: mkdir rc{0,1,2,3,4,5,6,S}.d
#Alternate solution with for loop as shown below.

array=('ls -ltr')

for array1 in array
do
  echo "array1: ${array1}"
done
