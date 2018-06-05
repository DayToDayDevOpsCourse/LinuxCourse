#!/bin/sh

# Invinity loop, you have to press Ctrl + c to comeout from the loop

while :

do

  echo "Please type something in (^C to quit)"
  
  read INPUT_STRING
  
  echo "You typed: $INPUT_STRING"
  
done