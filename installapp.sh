#!/bin/bash

# Ensure the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root: sudo $0"
  exit 1
fi

# Display the banner
display_banner

# Update and upgrade the system
echo "Updating package list..."
apt update -y
echo "Upgrading packages..."
apt upgrade -y

# Install Docker Compose
echo "Installing Docker Compose..."
apt install docker-compose -y

# install app for visual studio code 
echo "Installing App for visual studio code..."
sudo apt update && sudo apt upgrade -y && sudo apt install git wget curl openjdk-21-jdk python3 neofetch -y

# Install Neofetch
echo "Installing Neofetch..."
apt install neofetch -y

# Run Neofetch to display system information
echo "Running Neofetch..."
neofetch

echo "All tasks completed successfully!"
