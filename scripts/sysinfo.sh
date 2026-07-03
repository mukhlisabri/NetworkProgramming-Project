#!/bin/bash
echo "===== SYSTEM INFORMATION REPORT ====="
echo "Hostname : $(hostname)"
echo "Date/Time: $(date)"

echo ""
echo "--- CPU Information ---"
lscpu | grep -E "^Model name|^CPU\(s\)|^Architecture"

echo ""
echo "--- Memory Usage ---"
free -h

echo ""
echo "--- Disk Usage ---"
df -h --total | grep -E "^Filesystem|total"
echo ""
echo "--- Logged-in Users ---"
who

echo ""
echo "--- Top 5 Processes by CPU ---"
ps -eo user,pid,%cpu,%mem,comm --sort=-%cpu | head -6