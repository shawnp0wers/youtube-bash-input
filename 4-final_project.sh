#!/bin/bash
clear
sleep 1
echo
echo "Tell me a story, or slip me a note via STDIN..."
sleep 1
echo .

if [ -t 0 ]
then
	echo "No STDIN Detected."
	echo "Ok, we're gonna do this by hand."
	sleep 0.5
	echo "Type your story, and when you're"
	sleep 0.5
	echo "done, press enter on a blank line."
	echo
	while true
	do
		read TEXT
		if [[ $TEXT = "" ]]; then break; fi
		RESULT+="$TEXT"$'\n'
	done
	echo "Cool, got it. Thanks."
	sleep 2
else
	echo "STDIN Detected. Looking now..."
	sleep 0.5
	echo .
	sleep 1
	echo "Oooh, sweet note. I love it when"
	sleep 0.25
	echo "they're folded up like that..."
	sleep 2
	read -d '' RESULT
fi
echo
echo
echo "OK, got your story. Let's see if I remember it"
echo "correctly."
echo .
sleep 1
echo "A story by $USER:"
echo
sleep 0.5
echo "$RESULT"
sleep 2
echo
echo "Now I'm gonna post it on 4chan!"
echo
