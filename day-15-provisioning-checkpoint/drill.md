# Practice Drill: Provisioning Checkpoint

## Workflow Executed:
1. **Account Provisioning**: Created a simulated team member account (`newdev`) with home directory creation (`-m`) and privileged group assignment (`-G sudo`).
2. **Credential Setup**: Assigned a secure password using `passwd`.
3. **Tool Installation**: Chained repository refreshes and utility installations (`htop`, `curl`, `git`) using `apt update && apt install -y`.
4. **Audit & Verification**: Inspected system accounts via `getent` and filtered package installations using `dpkg -l | grep`.
