#!/bin/bash

# Check if ~/.zshrc exists and is a regular file (not a symlink)
if [ -f "$HOME/.zshrc" ]; then
    # Rename the existing .zshrc to .zshrc.back
    mv "$HOME/.zshrc" "$HOME/.zshrc.back"
    echo "Renamed ~/.zshrc to ~/.zshrc.back"
fi

# Create a symlink from the local .zshrc to ~/.zshrc
ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc"
echo "Created/Overwritten symlink for ~/.zshrc"

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
