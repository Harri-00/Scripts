#!/bin/bash

echo "=== Nmap Builder Script ==="
read -p "Target IP or domain: " target

# Scan type menu
echo ""
echo "Choose scan type:"
echo "1) Quick Scan (-sC -sV)"
echo "2) Full TCP Scan (-p-)"
echo "3) UDP Scan (-sU)"
echo "4) OS Detection (-O)"
echo "5) Custom options"
read -p "Selection (1-5): " scan_type

case $scan_type in
    1) scan_flags="-sC -sV" ;;
    2) scan_flags="-p-" ;;
    3) scan_flags="-sU" ;;
    4) scan_flags="-O" ;;
    5) read -p "Enter your custom Nmap options: " scan_flags ;;
    *) echo "Invalid selection"; exit 1 ;;
esac

# Output to file?
read -p "Save output to file? (y/n): " save_out
if [[ $save_out == "y" ]]; then
    read -p "Enter filename (without extension): " filename
    output="-oN ${filename}.txt"
else
    output=""
fi

# Build and show command
echo ""
echo "Running: nmap $scan_flags $target $output"
echo "---------------------------------------"
nmap $scan_flags $target $output
