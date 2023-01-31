#!/bin/bash

# Define functions for menu options
function option1 {
    echo "You selected option 1"
}

function option2 {
    echo "You selected option 2"
}

function option3 {
    echo "You selected option 3"
}

# Main menu
while true; do
    echo "Main Menu"
    echo "1. Option 1"
    echo "2. Option 2"
    echo "3. Option 3"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice
    case $choice in
        1) option1;;
        2) option2;;
        3) option3;;
        4) exit;;
        *) echo "Invalid option, try again.";;
    esac
done
