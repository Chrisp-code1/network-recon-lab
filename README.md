# Network Recon Lab

## Description
A beginner home lab project built on Ubuntu VMs to practice Linux networking, 
bash scripting, and network reconnaissance.

## Tools Used
- VirtualBox
- Ubuntu Linux
- Bash
- Git

## Lab Environment
- VM1: 192.168.56.101 (ran the recon script)
- VM2: 192.168.56.102 (target machine)
- Network: Host-Only Adapter (192.168.56.0/24)

## What the Script Does
- Captures current user with whoami
- Captures network interface info with ip a
- Pings target VM to test connectivity
- Runs traceroute to map the path to target
- Captures open ports and listening services with netstat
- Saves all output to recon_log.txt

## How to Run
1. Clone the repo
2. Make the script executable: chmod +x recon.sh
3. Run the script: ./recon.sh
4. View the output: cat recon_log.txt

## What I Learned
- Setting up and configuring Ubuntu VMs in VirtualBox
- Configuring Host-Only networking between two VMs
- Linux networking commands (ip a, ping, traceroute, netstat)
- Writing and running bash scripts
- Using variables, command substitution, and output redirection
- Pushing projects to GitHub from the command line

## Network Diagram
![Network Diagram](network-recon-lab.png)
