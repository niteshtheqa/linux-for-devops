#!/bin/bash
set -vx

read -p "Enter the number to reverse: " number


# check if the number is valid integer

    if [[ "$number" =~ ^[0-9]+$ ]]; then
        reversed_number=$(echo "$number" | rev)
        echo "Reversed Number: $reversed_number"

    else
        echo "Please enter valid integer ..."
    fi