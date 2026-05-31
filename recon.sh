#!/bin/bash

# recon.sh - Network Recon Script
# Author: codebind


LOGFILE="recon_log.txt"
TARGET="192.168.56.102"

echo "=================" > $LOGFILE
echo " NETWORK RECON REPORT" >> $LOGFILE
echo " Date: $(date)" >> $LOGFILE
echo "=================" >> $LOGFILE

echo "" >> $LOGFILE
echo "[1] WHOAMI" >> $LOGFILE
whoami >> $LOGFILE

echo "" >> $LOGFILE
echo "[2] IP ADDRESS INFO" >> $LOGFILE
ip a >> $LOGFILE

echo "" >> $LOGFILE
echo "[3] PING VM2" >> $LOGFILE
ping -c 4 $TARGET >> $LOGFILE

echo "" >> $LOGFILE
echo "[4] TRACEROUTE TO VM2" >> $LOGFILE
traceroute $TARGET >> $LOGFILE

echo "" >> $LOGFILE
echo "[5] OPEN PORTS (netstat)" >> $LOGFILE
netstat -tuln >> $LOGFILE

echo "" >> $LOGFILE
echo "===============" >> $LOGFILE
echo " RECON COMPLETE" >> $LOGFILE
echo "===============" >> $LOGFILE

echo "Done! Output saved to $LOGFILE"
