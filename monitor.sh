#!/bin/bash
echo "===== System Health Report ====="
echo "Generated: $(date)"
echo ""
echo "--- Disk Usage ---"
df -h /
echo ""
echo "--- Memory Usage ---"
free -h
echo ""
echo "--- CPU Load ---"
uptime
echo ""
echo "===== End of Report ====="