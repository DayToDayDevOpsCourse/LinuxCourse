#!/bin/sh

#Pass the parameters as below.
#./variables-1.sh venkat puneet vasu subbu

echo "I was called with $# parameters"
echo "My name is $0"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"