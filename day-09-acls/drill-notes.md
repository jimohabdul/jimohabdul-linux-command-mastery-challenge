# Drill Notes: Day 09 - Practical Execution Log

## Step 1: Package Installation & Verification
Installed the `acl` utility package via `apt` to enable extended permission management tools.
Verified baseline file permissions using `ls -l` and `getfacl`.

## Step 2: Custom User Permissions via `setfacl -m`
Applied targeted read/write permissions for the `nobody` user account on `acl-test.txt`.
Observed the appearance of the trailing `+` indicator in the long-listing permission string (`-rw-rw-r--+`).

## Step 3: Directory Inheritance (`setfacl -d`)
Provisioned `acl-dir/` and configured default inheritance rules to guarantee automated access for collaborative workflows.

## Step 4: Cleanup & Reversion (`setfacl -b`)
Stripped all extended ACL attributes using `-b`, successfully reverting `acl-test.txt` back to standard DAC structure and removing the `+` flag.
