# Scripts

# HTB Start Script

A Bash script to automate processes when starting a new Hack The Box (HTB) machine.

This script:
- Checks connectivity to a target IP
- Automatically creates a project folder in `~/Desktop/htb/<boxname>`
- Runs a basic Nmap scan and saves the output as `nmap.txt`

---

## Usage

1. Make sure you're connected to the HTB VPN.

2. Make the script executable:

    ```bash
   chmod +x htb_start.sh
    ```

3. Run the script:

    ```bash
   ./htb_start.sh
    ```


# Nmap Builder Script

An interactive Bash script to help you quickly build and run common Nmap scans.

## Features
- Prompt-based interface for selecting scan types:
  - Quick scan (`-sC -sV`)
  - Full TCP port scan (`-p-`)
  - UDP scan (`-sU`)
  - OS detection (`-O`)
  - Custom flags
- Option to save output to a file (`.txt`)
- Easy to extend and customize

---

## Usage

1. Make the script executable:

    ```bash
   chmod +x nmap_builder.sh
    ```

2. Run the script:

    ```bash
    ./nmap_builder.sh
    ```


# VPN Check Script

A Bash script to quickly verify whether you're connected to the Hack The Box VPN.

This script:
- Checks for the `tun0` interface used by OpenVPN
- Confirms an IP address is assigned

---

## Usage

1. Make the script executable:

    ```bash
   chmod +x vpn_check.sh
    ```

3. Run the script:

    ```bash
   ./vpn_check.sh
    ```