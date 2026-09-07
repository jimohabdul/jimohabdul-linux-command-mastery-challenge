#!/bin/bash

# Configuration Variables
TARGET_HOST="localhost"
SERVICE_NAME="ssh"
DEPLOY_FILE="app_config.conf"
REMOTE_DEST="/tmp/$DEPLOY_FILE"

echo "=================================================="
echo "Starting Capstone Deployment & Verification Pipeline"
echo "=================================================="

# Step 1: Create a mock configuration payload
echo "[1/5] Generating deployment payload..."
echo "SERVER_MODE=production" > "$DEPLOY_FILE"
echo "TIMEOUT=60" >> "$DEPLOY_FILE"

# Step 2: Secure file deployment via SCP
echo "[2/5] Deploying file to target via SCP..."
scp "$DEPLOY_FILE" "$TARGET_HOST:$REMOTE_DEST"
if [ $? -eq 0 ]; then
   echo "  -> File successfully transferred."
else
   echo "  -> [ERROR] File transfer failed."
   exit 1
fi

# Step 3: Apply strict ownership and permissions
echo "[3/5] Securing file permissions and ownership..."
chmod 644 "$REMOTE_DEST"
echo "  -> Permissions set to 644 on $REMOTE_DEST."

# Step 4: Restart target service and verify health
echo "[4/5] Managing service lifecycle and running health check..."
sudo systemctl restart "$SERVICE_NAME"

if systemctl is-active --quiet "$SERVICE_NAME"; then
echo "  -> [SUCCESS] $SERVICE_NAME is active and running."
   logger "Capstone Pipeline: $SERVICE_NAME successfully restarted and verified."
else
   echo "  -> [CRITICAL] $SERVICE_NAME failed health check."
   logger "Capstone Pipeline: CRITICAL - $SERVICE_Name unhealthy."
   exit 1
fi

# Step 5: Clean up local temporary file
echo "[5/5] Cleaning up local staging files..."
rm -f "$DEPLOY_FILE"

echo "=================================================="
echo "Capstone Pipeline Completed Successfully!"
echo "=================================================="
