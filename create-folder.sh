#!/bin/bash


# Create Folder
mkdir my-folder
echo "Folder created..."
#Change Directory

cd my-folder

#Print current working directory
echo "Current directory path:  $(pwd)"

current_directory=$(pwd)
current_folder=$(basename "$current_directory")

echo "Current folder is: $current_folder"


# Create Files

touch file1.txt file2.txt

echo "Files created..."

echo "File names in the current directory:"

find . -maxdepth 1 -type f -exec basename {} \;
