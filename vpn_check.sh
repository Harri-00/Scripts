#!/bin/bash

echo "Checking HTB VPN connection..."

# Check if tun0 interface exists
if ip a show tun0 > /dev/null 2>&1; then
    IP=$(ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
    
    if [[ -n "$IP" ]]; then
        echo "VPN is connected on tun0 with IP: $IP"

        # Optional: Test connectivity to HTB gateway
        echo "Pinging HTB gateway (10.10.10.10)..."
        ping -c 3 -W 2 10.10.10.10 > /dev/null

        if [[ $? -eq 0 ]]; then
            echo "HTB VPN routing is working."
    else
        echo "tun0 exists, but no IP address. VPN might not be fully connected."
    fi
else
    echo "VPN interface 'tun0' not found. Are you connected?"
fi
