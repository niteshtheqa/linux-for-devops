#!/bin/bash

set -x

filename="file_to_print_length_and_word_count.txt"
content="This file has
empty line
and you need to
remove those empty line"


if [ -e "$filename" ]; then
	echo "File '$filename' is present"
    awk '{print "Line " NR ": Length = " length($0) ", Word Count = " NF}' "$filename"
	
else
	echo "File with name '$filename' is created"
	echo "$content" > "$filename"
    echo "Content added to '$filename' successfully."
    awk '{print "Line " NR ": Length = " length($0) ", Word Count = " NF}' "$filename"
fi

 