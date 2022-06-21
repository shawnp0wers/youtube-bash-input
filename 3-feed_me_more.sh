#!/bin/bash

# NOTE: This will read a multi-line file, but you can only ENTER a single line...

echo "Tell me something cool..."
echo .

if [ -t 0 ]
then
	read THING
	echo .
	sleep 1
	echo "Interesting..."
	sleep 1
	echo .
	sleep 1
else
	sleep 1
	echo .
	echo "Ok, you passed me file. That works too."
	echo .
	sleep 1
	echo .
	read -d '' THING
	echo "Got it."
	echo
	sleep 1
fi
echo "Here's what you told me:"
echo
sleep 1
echo "$THING"
