#!/bin/bash
# network_info.sh
# Phase 2 - Sysadmin Toolkit
# Pulls network configuration and connectivity info

echo "========================================="
echo "         NETWORK INFO REPORT"
echo "  Generated: $(date)"
echo "========================================="

echo ""
echo "----- NETWORK INTERFACES & IP ADDRESSES -----"
ip a

echo ""
echo "----- DEFAULT GATEWAY -----"
ip route | grep default

echo ""
echo "----- DNS SERVERS -----"
cat /etc/resolv.conf | grep nameserver

echo ""
echo "----- LISTENING PORTS -----"
ss -tuln

echo ""
echo "----- CONNECTIVITY TEST -----"
ping -c 3 8.8.8.8

echo ""
echo "========================================="
echo "           END OF REPORT"
echo "========================================="
