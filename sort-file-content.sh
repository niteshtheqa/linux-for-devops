#!/bin/bash

filename="greptest.txt"
content="cat\ndog\napple\nball\nzebra\nAPPLE"

if [ -e "$filename" ]; then
	echo "File '$filename' is present"
	
else
	echo "File with name '$filename' is created"
	echo "$content" > "$filename"
    echo "Content added to '$filename' successfully."
fi

sort $filename
echo "File '$filename' sorted successfully..."
