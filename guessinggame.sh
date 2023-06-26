#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -l | grep "^-" | wc -l)
    echo "$count"
}

# Main function
main() {
    local files=$(count_files)
    local guess=-1

    echo "Welcome to the Guessing Game!"

    while [[ $guess -ne $files ]]; do
        read -p "How many files are in the current directory? Enter your guess: " guess

        if [[ $guess -lt $files ]]; then
            echo "Too low. Try again."
        elif [[ $guess -gt $files ]]; then
            echo "Too high. Try again."
        fi
    done

    echo "Congratulations! You guessed the correct number of files ($files) in the current directory."
}

# Call the main function
main