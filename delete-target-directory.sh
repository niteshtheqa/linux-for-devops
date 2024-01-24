#!/bin/bash

sh create-folder.sh
sleep 5
target_directory="my-folder"
echo "Current direcotry: $(pwd)"
sleep 5
if [ -d "$target_directory" ]; then
	read -p "Do you want to continue? (yes/no): " answer
	answer_lowercase=$(echo "$answer" | tr '[:upper:]' '[:lower:]')

	if [ "$answer_lowercase" == "yes" ]; then
	echo "Deleting directory: $target_directory"
	rm -r "$target_directory"
	sleep 5
	echo "Directory deleted successfully"
	elif [ "$answer_lowercase" == "no" ]; then
		echo "Operation canceled"
	else 
		echo "Invalid response, Please Enter 'yes' or 'no'. "
       fi
else
	echo "directory does not exist: $target_directory"
fi
