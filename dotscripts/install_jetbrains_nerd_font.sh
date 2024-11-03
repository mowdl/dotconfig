#!/bin/bash

# Define the font URL and installation path
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"
FONT_DIR="$HOME/.local/share/fonts"
TMP_DIR="/tmp/jetbrains-font"

# Create the temporary directory
mkdir -p "$TMP_DIR"

# Download the font
echo "Downloading JetBrains Mono Nerd Font..."
curl -L -o "$TMP_DIR/JetBrainsMono.zip" "$FONT_URL"

# Unzip the font
echo "Extracting fonts..."
unzip -o "$TMP_DIR/JetBrainsMono.zip" -d "$TMP_DIR"

# Create the font directory if it doesn't exist
mkdir -p "$FONT_DIR"

# Move the fonts to the local fonts directory
echo "Installing fonts..."
mv "$TMP_DIR/"* "$FONT_DIR/"

# Clean up
echo "Cleaning up..."
rm -rf "$TMP_DIR"

# Update font cache
echo "Updating font cache..."
fc-cache -f -v

echo "JetBrains Mono Nerd Font installation completed!"

