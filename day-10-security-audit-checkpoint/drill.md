# Practice Drill: Security Checkpoint & Audit

## Task Restatement
Produce a one-page mini security audit of a server: who has logged in recently, who is logged in right now, which accounts have never logged in, and every sudo command run in this session.

## Commands Executed
```bash
who
w

check recent login history:
last | head -n 20

# check accounts and their last login status (identifying unused account):
lastlog

#Audit SUID binaries for potential privilege escalation vectors
find / -perm /4000 2>/dev/null | head -n 30

# 5. Check failed login attempts (brute-force monitoring):
sudo lastb | head -n 10

#Review administrative actions in the current session:
history | grep sudo
