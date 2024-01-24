#!/bin/bash


print_pattern()  {

	local limit=$1

	for ((i = 1; i <= limit; i++)); do
		for ((j = 1; j <= i ; j++)); do
			echo -n "$j "
	        done
		echo " "
	done
}

print_pattern 1

print_pattern 2

print_pattern 3

print_pattern 4
