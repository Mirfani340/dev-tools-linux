#!/bin/bash

# Check if system is 64-bit
if [ $(uname -m) == "x86_64" ]; then
    echo "System is 64-bit"
else
    echo "System is not 64-bit"
fi

# Check if using Ubuntu 20.04
if [ $(lsb_release -r | awk '{print $2}') == "20.04" ]; then
    echo "Using Ubuntu 20.04"
else
    echo "Not using Ubuntu 20.04"
    read -p "Do you wish to continue anyway? [Y/n] " response
    case $response in
        [Nn]*) exit 1;;
    esac
fi
