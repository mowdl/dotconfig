#!/bin/bash

# Define the version you want to install
NVIM_VERSION="v0.10.2"  # Change this to the desired version
INSTALL_DIR="$HOME/.local/nvim"

# Create the installation directory
mkdir -p "$INSTALL_DIR"

# Download the pre-built binary
echo "Downloading Neovim..."
curl -LO "https://github.com/neovim/neovim/releases/download/$NVIM_VERSION/nvim-linux64.tar.gz"

# Extract the downloaded file
echo "Extracting Neovim..."
tar xzf "nvim-linux64.tar.gz" -C "$INSTALL_DIR" --strip-components=1

# Clean up the downloaded tar file
rm nvim-linux64.tar.gz

# Add nvim to PATH
if ! grep -q "$INSTALL_DIR/bin" "$HOME/.zshrc"; then
    echo "export PATH=\"\$PATH:$INSTALL_DIR/bin\"" >> "$HOME/.bashrc"
    echo "Added Neovim to PATH. Please restart your terminal or run 'source ~/.bashrc'."
else
    echo "Neovim is already in your PATH."
fi

echo "Neovim installation completed! You can run it using 'nvim'."

