# Drill Notes: Day 08 - Practical Execution Log

## Step 1: SUID Configuration & Testing
Created a test script and applied SUID permission bits using symbolic (`u+s`) and octal (`4755`) notations.
Observed the substitution of `x` with `s` in the user permission block (`-rwsr-xr-x`) via `ls -l`.

## Step 2: SGID Collaborative Inheritance
Provisioned a `shared-folder/` directory and applied the SGID flag (`2775`).
Validated that the group permission block correctly displayed the `s` indicator (`drwxr-sr-x`).

## Step 3: Sticky Bit Public Lab Protection
Created a `public-lab/` directory and applied the Sticky Bit (`1777`).
Confirmed the appearance of the trailing `t` flag in the others permissions block (`drwxrwxrwt`).

## Step 4: Security Auditing with `find`
Executed filesystem search sweeps using `-perm /4000` and `-perm /2000` flags to locate active special permission binaries and directories.
