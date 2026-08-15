# Drill Notes: Day 07 - Practical Execution Log

## Step 1: User Context Verification
Inspected current security identity and group bindings using the `id` and `groups` commands.

## Step 2: Ownership Tests & Modifications
Created a test file (`test-file.txt`), checked its default metadata with `ls -l`, and tested group modifications via `chgrp`.
Executed atomic user:group changes and copied ownership profiles using the `--reference=` flag.

## Step 3: Recursive Ownership Validation
Provisioned a nested directory tree (`project-dir/sub-dir`) and verified recursive ownership application using `chown -R`.
