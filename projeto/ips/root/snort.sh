#!/bin/bash

# Function to bring br0 up
bring_br0_up() {
  ip link set br0 up
  echo "br0 brought back up."
}

# Trap Ctrl+C (SIGINT) and call bring_br0_up
trap bring_br0_up SIGINT

# Bring br0 down
ip link set br0 down
echo "br0 brought down."

# Run Snort
snort -A console -c /etc/snort/snort.conf -Q -i eth0:eth1

echo "Script finished."
