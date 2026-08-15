# Day 07: File & Directory Ownership (`chown`/`chgrp`)
# Phase 2 - Permissions, Ownership & Security | Day 7 of 30
## Objective
Understand the separation of user and group ownership in Linux. Learn how to delegate file control using `chown`, modify group allocations with `chgrp`, execute recursive ownership updates, and audit system security using metadata commands.

## Commands covered Today
Refer to [commands.md](commands.md) for detailed syntax, flags, and practical use cases:
1. `chown` — Change the user owner of a file or directory.
2. `chown user:group` — Update user and group ownership simultaneously.
3. `chown :group` — Modify only the group owner of a target file.
4. `chgrp` — Specifically change the group ownership without altering the user.
5. `chown -R` — Recursively apply user ownership changes across a directory tree.
6. `chgrp -R` — Recursively update group ownership across a directory hierarchy.
7. `chown --reference=` — Copy the ownership profile from a reference file.
8. `ls -l` — Inspect file metadata columns for active ownership audits.
9. `id` — Display real and effective UID, GID, and group memberships.
10. `groups` — Print all group memberships for a specified user.


## Practice Drill Summary
* **Task Performed:** Examined user/group bindings via `id` and `ls -l`, tested group modification with `chgrp`, applied atomic user:group changes, utilized `--reference=` flags, and executed recursive ownership updates on a nested test directory structure.
* **Verification:** Confirmed ownership changes successfully updated the file metadata fields and verified results through terminal outputs and evidence screenshots.

## Key Takeaways & Surprises
* **The Root Privilege Boundary:** Changing a file's user owner to another user is a privileged operation restricted to `sudo` to prevent unauthorized file theft or unintended privilege escalation.


## Repository Navigation
* **Previous Day:** [Day 06: Reading & Setting Permissions](../day-06-permissions/)
* **Next Day:** [Day 08: Special Permissions (SUID, SGID, Sticky Bit)](../day-08-special-permissions/)
