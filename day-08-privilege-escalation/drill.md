# Day 8: Practice Drill & Workflow

Follow these steps to complete your hands-on practice drill for Day 8.

## Drill Exercises

### Step 1: Privilege Escalation & Recovery
1. Attempt to read a restricted system log file that triggers a permission error:
'''bash
tail /var/log/syslog
2. Instantly re-run the command with superuser privileges using the quick-recall syntax:
Bash
sudo !!

## Step 2: Identity & Policy Inspection
1. Inspect your active session identity:
Bash
whoami && id
2. Review your authorized administrative capabilities:
Bash
sudo -l
