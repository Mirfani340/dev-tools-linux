#!/bin/bash

function check() {
  input_file=$1
  if [ -e "$input_file" ]; then
    if grep -q "sudo" "$input_file"; then
      clear
      echo -e "\033[31m$input_file requires root privileges. Running with sudo...\033[0m"
      read -p "Do you want to run this file with sudo (y/n)? " choice
      if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        sudo bash "$input_file"
      else
        echo "Exiting without running the file."
      fi
    else
      clear
      echo -e "\033[32mRunning $input_file as normal user...\033[0m"
      bash "$input_file"
    fi
  else
    echo "$input_file does not exist."
  fi
}