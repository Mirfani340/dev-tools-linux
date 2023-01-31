#!/bin/bash

# Define functions for menu options
source lib/sudo_check.sh

function option1 {
    source plugin/hello.sh
    check "plugin/hello.sh"
    echo -e "\033[32mThe script is done\033[0m"
}

function option2 {
    echo "Installing NVM, please wait sir"
    source plugin/install_nvm.sh
    echo -e "\033[32mThe script is done\033[0m"
}

function option3 {
    echo "Installing docker-full"
    source plugin/install_docker_full.sh
    echo -e "\033[32mThe script is done\033[0m"
}

# Main menu
source lib/system_check.sh

while true; do
    echo "Main Menu | type (clear) to clear screen"
    echo "1. Hello"
    echo "2. Install NVM (Node Version Manager)"
    echo "3. Install Docker + Docker-compose"
    echo "4. Exit"
    read -p "Enter your choice [1-4]: " choice
    if [ "$choice" == "clear" ]; then
        clear
    else
        case $choice in
            1) option1;;
            2) option2;;
            3) option3;;
            4) exit;;
            *) echo "Invalid option, try again.";;
        esac
    fi
done
