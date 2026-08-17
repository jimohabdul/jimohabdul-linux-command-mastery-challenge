# Day 8: Practice Drill & Workflow

## Drill Exercises

### Step 1: Privilege Escalation & Recovery
1. Attempt to read a restricted system log file that triggers a permission error:
```bash
tail /var/log/syslog
Instantly re-run the command with superuser privileges using the quick-recall syntax:
sudo !!

### Step 2: Identity & Policy Inspection
1. Inspect your active session identity:
whoami && id
2. Review your authorized administrative capabilities:
sudo -l
