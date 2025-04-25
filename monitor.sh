#!/bin/bash

echo "---------------------------------------"
echo "🖥️  Linux System Monitoring Script"
echo "---------------------------------------"
echo "Date      : $(date)"
echo "Hostname  : $(hostname)"
echo "Uptime    : $(uptime -p)"
echo ""

# CPU Usage
echo "🧠 CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2 "%, Idle: " $8 "%"}'
echo ""

# Memory Usage
echo "🧠 Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / Total: %s\n", $3, $2}'
echo ""

# Disk Usage
echo "💾 Disk Usage:"
df -h --output=source,fstype,size,used,avail,pcent,target -x tmpfs -x devtmpfs
echo ""

# Network Usage
echo "🌐 Network Interfaces:"
ip -brief address | grep -v lo
echo ""

# Top 5 Memory Processes
echo "🔥 Top 5 Memory-consuming Processes:"
ps aux --sort=-%mem | awk 'NR<=6{printf "%-10s %-10s %-10s %-s\n", $1, $3, $4, $11}'
echo ""

