#!/bin/bash

if [ -t 0 ]
then
	echo no stdin
else
	echo I detect stdin
fi
