#!/bin/sh

string1="DevOps"

echo "-----equals example-----"

if [ "$string1" = "DevOps" ]

then

	echo "Matched"

fi

echo ""
echo "-----Not equals example-----"


if [ "$string1" != "DevOpss" ]

then

	echo "does NOT matched"

fi

echo ""
echo "-----if-else example-----"

if [ "$string1" = "DevOpss" ]

then

	echo "matched"

else 

	echo "does NOT matched"

fi