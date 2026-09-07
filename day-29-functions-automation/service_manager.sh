#!/bin/bash

# Define a reusable function to audit and manage services
manage_service() {
    local service_name="$1"

    if [ -z "$service_name" ]; then
         echo "[ERROR] No service name provided."
         return 1
    fi

    echo "Checking status of service: $service_name..."

    # Check if the service is active
    if systemctl is-active --quiet "$service_name"; then
       echo "[INFO] $service_name is running normally."
       logger "Health check passed: $service_name is active."
    else
    echo "[WARNING] $service_name is stopped! Attempting restart..."
      logger "ALERT: $service_name is inactive. Restarting..."

      sudo systemctl restart "$service_name"

     if [ $? -eq 0 ]; then
          echo "[SUCCESS] $service_name has been successfully restarted."
          logger "Recovery successful: $service_name restarted."
     else
         echo "[CRITICAL] Failed to restart $service_name."
         logger "CRITICAL: Failed to restart $service_name."
     fi
   fi
}
# Execute function using the first positional argument passed to the script
manage_service "$1"
