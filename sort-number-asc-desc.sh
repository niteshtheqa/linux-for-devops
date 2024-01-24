#!/bin/bash

filename="sample_file.txt"
content="6\n8\n12\n6\n785\n5675\n898\n5363"


if [ -e "$filename" ]; then
	echo "File '$filename' is present"
    echo "File '$filename' before sort:\n  $(cat "$filename")"
    echo "$filename" | tr ' ' '\n' | sort -n
    echo "File '$filename' after sort:\n  $(cat "$filename")"
	
else
	echo "File with name '$filename' is created"
	echo "$content" > "$filename"
    echo "Content added to '$filename' successfully."
    echo "File '$filename' before sort:\n  $(cat "$filename")"
    echo "$filename" | tr ' ' '\n' | sort -n
    echo "File '$filename' after sort:\n  $(cat "$filename")"
fi