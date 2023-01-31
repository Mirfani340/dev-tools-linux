#!/bin/bash

# Define functions for menu options
function option1 {
    source plugin/hello.sh
    echo "The script is done"

    clear
}

function option2 {
    echo "Installing NVM, please wait sir"
    source plugin/install_nvm.sh
}

function option3 {
    echo "You selected option 3"
}

# Main menu
source lib/system_check.sh

while true; do
    echo "Main Menu"
    echo "1. Hello"
    echo "2. Install NVM (Node Version Manager)"
    echo "3. Install Docker + Docker-compose"
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
