# Day 8: Practice Drill & Workflow

Follow these steps to complete your hands-on practice drill for Day 8.

## Drill Exercises

### Step 1: Privilege Escalation & Recovery
1. Attempt to read a restricted system log file that triggers a permission error:
   ```bash
   tail /var/log/syslog
1. Instantly re-run the command with superuser privileges using the quick-recall syntax:
sudo !!
sudo !!

## Step 2: Identify & Policy Inspection
1. Inspect your active session identity:
whoami && id

2. Review your authorized administrative capabilities:
sudo -l
