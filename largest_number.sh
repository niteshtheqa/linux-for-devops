#!/bin/bash


#Prompt user to enter multiple number seperated by spaces

read -p "Enter number separated by spaces" number_array

# User an array to store the numbers
numbers=($number_array)

# Initialize the largest number iwth the first element
largest=${numbers[0]}


#Loop through the array to find the largest number



	for num in "${numbers[@]}"; do
		if ((num > largest)); then
			largest=$num
		fi
	done


# Display the result

echo "The largest number is: $largest"


