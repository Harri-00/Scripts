#!/bin/bash

# Ask for box name and IP
read -p "Enter HTB box name: " BOX_NAME
read -p "Enter HTB box IP address: " BOX_IP

# Create folder on Desktop
DESKTOP="$HOME/Desktop"
FOLDER_PATH="$DESKTOP/$BOX_NAME"
mkdir -p "$FOLDER_PATH"
echo "Created folder: $FOLDER_PATH"

# Ping the box (4 pings)
echo "Pinging $BOX_IP..."
ping -c 4 "$BOX_IP"

# Run nmap scan with default scripts and version detection
NMAP_OUTPUT="$FOLDER_PATH/${BOX_NAME}_nmap.txt"
echo "Running nmap scan on $BOX_IP..."
nmap -sC -sV -oN "$NMAP_OUTPUT" "$BOX_IP"

echo "Nmap scan saved to $NMAP_OUTPUT"

echo "Done! You can now add your notes or do further scans."
