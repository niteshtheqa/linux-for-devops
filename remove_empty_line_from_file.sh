#!/bin/bash

set -x

filename="file_with_empty_line.txt"
content="This file has


empty line

and you need to



remove those empty line"


if [ -e "$filename" ]; then
	echo "File '$filename' is present"
    # Use sed to remove empty lines and overwrite the original file
    sed -i '' '/^$/d' "$filename"
    echo "Empty lines removed from '$filename'."
    echo "Content of file after empty lines removed: $(cat "$filename")"
	
else
	echo "File with name '$filename' is created"
	echo "$content" > "$filename"
    echo "Content added to '$filename' successfully."
    sed -i '' '/^$/d' "$filename"
    echo "Empty lines removed from '$filename'."
    echo "Content of file after empty lines removed: $(cat "$filename")"
fi

 