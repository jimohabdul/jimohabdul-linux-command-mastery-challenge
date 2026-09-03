#!/bin/bash

# Read user name
read -p "Enter your name: " username
echo "Welcome, $username! Running operational checks..."

# Check if a configuration file exists
config_file="/etc/ssh/sshd_config"
if [ -f "$config_file" ]; then
    echo "[INFO] Config file $config_file exists."
else
    echo "[WARNING] Config file $config_file not found."
fi

# Loop through three server names/IPs and ping each one once
servers=("127.0.0.1" "8.8.8.8" "1.1.1.1")
echo "Pinking server fleet..."
for server in "${servers[@]}"; do
echo "Checking $server..."
ping -c 1 "$server" > /dev/null 2>&1
   if [ $? -eq 0 ]; then
       echo "  -> $server is REACHABLE."
  else
       echo "  -> $server is UNREACHABLE."
fi
done
