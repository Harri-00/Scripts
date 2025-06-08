#!/bin/bash

echo "Checking HTB VPN connection..."

# Check if tun0 interface exists
if ip a show tun0 > /dev/null 2>&1; then
    IP=$(ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
    
    if [[ -n "$IP" ]]; then
        echo "VPN is connected on tun0 with IP: $IP"
    else
        echo "tun0 exists, but no IP address. VPN might not be fully connected."
    fi
else
    echo "VPN interface 'tun0' not found. Are you connected?"
fi
