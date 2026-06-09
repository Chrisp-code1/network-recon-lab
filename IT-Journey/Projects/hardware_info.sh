#!/bin/bash
# hardware_info.sh - System hardware summary tool
# Part of the sysadmin toolkit
# Author: Christopher Facio

echo "===== CPU INFO ====="
lscpu | grep -E "Model name|CPU\(s\)|MHz" 

echo  ""
echo "===== RAM INFO ====="
free -h

echo ""
echo "===== STORAGE INFO ====="
lsblk
echo ""
df -h

echo ""
echo "===== NETWORK INFO ====="
ip a

echo ""
echo "===== END OF REPORT ====="

