#!/bin/bash

#Currently logged users
#Your shell directory
#Home directory
#OS name & version
#Current working directory
#Number of users logged in
#Show all available shells in your system
#Hard disk information
#CPU information
#Memory information
#File system information
#Currently running process

filename="system_information.txt"
if [ -e "$filename" ]; then
	echo "File '$filename' is present"
    rm "$filename"
    touch "$filename"
    chmod 777 "$filename"

 else
	echo "File with name '$filename' is created"
	touch "$filename"
    chmod 777 "$filename"
fi

    
echo "Currently Logged User: $(whoami)" >> "$filename"

# Prompt the user to continue
read -p "Do you want to continue? (yes/no): " answer

# Check the user's response
if [ "$answer" = "yes" ]; then
    echo "Continuing..."
    cat "$filename"
else
    echo "Exiting."
fi

echo "Your shell directory: $(pwd)" >> "$filename"

# Prompt the user to continue
read -p "Do you want to continue? (yes/no): " answer

# Check the user's response
if [ "$answer" = "yes" ]; then
    echo "Continuing..."
    cat "$filename"
    # Add your additional commands here
else
    echo "Exiting."
fi

echo "Your Home Directory: $HOME" > "$filename"

# Prompt the user to continue
read -p "Do you want to continue? (yes/no): " answer

# Check the user's response
if [ "$answer" = "yes" ]; then
    echo "Continuing..."
    cat "$filename"
    # Add your additional commands here
else
    echo "Exiting."
fi

echo "OS Information: $(uname -a)" >> "$filename"
 
echo "OS Name: $(uname -s)" >> "$filename"

echo "OS Version: $(uname -r)" >> "$filename"

echo "Number of logged in use: $(who | wc -l)" >> "$filename"

echo "All shells: $(cat /etc/shells)" >> "$filename"