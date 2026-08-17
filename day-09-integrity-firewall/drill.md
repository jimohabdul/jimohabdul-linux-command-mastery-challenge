# Day 9 Practice Drill

**Practice Drill Task:** Generate a SHA-256 checksum for a downloaded file to verify its integrity, make a file immutable with chattr, then open only port 22 and port 443 on the firewall.

## Execution Steps
```bash
# Step 1: Create a sample file to act as our "downloaded file"
echo "Important software release data v1.0" > downloaded_file.txt

# Step 2: Generate the SHA-256 checksum to verify its integrity
sha256sum downloaded_file.txt

# Step 3: Save the checksum to a verification file
sha256sum downloaded_file.txt > downloaded_file.txt.sha256

# Step 4: Verify the file integrity against the checksum
sha256sum -c downloaded_file.txt.sha256

# Step 5: Make the file immutable using chattr +i
sudo chattr +i downloaded_file.txt

# Step 6: Confirm the immutable attribute using lsattr
lsattr downloaded_file.txt

# Step 7: Set default UFW firewall policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Step 8: Open only port 22 and port 443
sudo ufw allow 22
sudo ufw allow 443

# Step 9: Enable UFW and check the final status
sudo ufw enable
sudo ufw status verbose
