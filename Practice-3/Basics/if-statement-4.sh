#!/bin/sh

DIR="sampleDir"

if [ -d "$DIR" ]
then
        echo "$DIR directory  exists!"

		if [ -f $DIR/file.txt ]; then
			echo "file exists: new line from nested if block" > $DIR/file.txt
		else
			echo "file does not exists: new line from nested else" > $DIR/file.txt
			cat 
		fi
else
        echo "$DIR directory not found!"
        mkdir $DIR
        echo "new line from else block" > $DIR/file.txt
fi
