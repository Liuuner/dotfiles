#!/bin/bash

# Function to check if a package is installed
check_package_installed() {
    if command -v $1 &> /dev/null; then
        echo "$1 is installed."
    else
        echo "$1 is not installed."
    fi
}

# Check if zsh and oh-my-posh are installed
check_package_installed "zsh"
check_package_installed "oh-my-posh"
check_package_installed "bat"
check_package_installed "zoxide"

echo 'make zsh your default shell with chsh -s /usr/bin/zsh'