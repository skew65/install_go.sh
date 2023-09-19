#!/bin/bash

# Download the Go binary archive
wget https://golang.org/dl/go1.17.linux-amd64.tar.gz

# Extract the archive to /usr/local directory
sudo tar -C /usr/local -xzf go1.17.linux-amd64.tar.gz

# Add Go binary directory to the PATH environment variable
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
source ~/.bashrc

# Verify the installation
go version

# Make the script executable
chmod +x "$0"
