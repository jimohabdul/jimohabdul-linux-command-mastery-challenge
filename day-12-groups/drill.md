# Practice Drill: Groups & Access Circles


## Task Restatement
Create a group named devs, add two users to it, confirm membership with getent, remove one member, then delete the group entirely.

## Commands Executed
```bash
# 1. Create the 'devs' group
sudo groupadd devs

# 2. Create two test user accounts
sudo useradd -m alice
sudo useradd -m bob

# 3. Add both users to the 'devs' group using gpasswd
sudo gpasswd -a alice devs
sudo gpasswd -a bob devs

# 4. Confirm membership using getent
getent group devs

# 5. Remove one member from the group
sudo gpasswd -d bob devs

# 6. Verify updated membership
getent group devs

# 7. Clean up user accounts and delete the group
sudo userdel -r alice
sudo userdel -r bob
sudo groupdel devs
