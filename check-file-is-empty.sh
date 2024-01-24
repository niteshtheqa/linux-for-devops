#!/bin/bash


# Promt user to enter filename

read -p "Enter filename: "  filename

# Check if file present

if [ -e "$filename" ]; then
	echo "File '$filename' is present"
	
else
	echo "File with name '$filename' is created"
	touch file123.txt
	chmod 777 file123.txt
fi


if [ -s "$filename" ]; then
	echo "The file is not empty"
else
	echo "The is empty or does not exists"
fi
