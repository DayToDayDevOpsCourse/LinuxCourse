#!/bin/sh
X=0
while [ -n "$X" ]
do
  echo -en "Enter some text (press enter to quit): "
  read X
  echo "You said: $X"
done