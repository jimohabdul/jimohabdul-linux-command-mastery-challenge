# Practice Drill: Creating & Managing Users

## Task Restatement
Create a new user with a home directory and Bash shell, set their password, add them to a secondary group, rename the account, then remove it along with its home directory.

## Commands Executed
```bash
# 1. Create a secondary group for testing group assignment
sudo groupadd techteam

# 2. Create a new user with a home directory and Bash shell
sudo useradd -m -s /bin/bash testuser

# 3. Set a password for the new user
sudo passwd testuser

# 4. Add the user to the secondary group without losing primary group settings
sudo usermod -aG techteam testuser

# 5. Verify the user's groups and settings
id testuser

# 6. Rename the user account login name
sudo usermod -l productionuser testuser

# 7. Cleanly delete the account and its home directory
sudo userdel -r productionuser

# 8. Clean up the test group
sudo groupdel techteam
