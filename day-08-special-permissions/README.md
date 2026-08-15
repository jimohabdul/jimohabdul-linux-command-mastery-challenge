# Day 08: Special Permissions (SUID, SGID, Sticky Bit)
# Phase 2 - Permissions, Ownership & Security | Day 8 of 30

## Objective
Master Linux advanced security mechanisms beyond standard DAC. Understand how to configure and audit SUID for privileged execution, SGID for collaborative team directory inheritance, and the Sticky Bit for protecting shared public folders.

Commands Covered Today
Refer to [commands.md](commands.md) for detailed syntax, flags, and practical use cases:
1. `chmod u+s` — Set the SUID permission bit.
2. `chmod g+s` — Set the SGID permission bit.
3. `chmod +t` — Set the Sticky Bit on shared directories.
4. `chmod 4755` — Apply SUID using 4-digit octal notation.
5. `chmod 2755` — Apply SGID using 4-digit octal notation.
6. `chmod 1777` — Apply Sticky Bit using 4-digit octal notation.
7. `find / -perm /4000` — Audit system-wide SUID files.
8. `find / -perm /2000` — Audit system-wide SGID files.
9. `ls -l` — Inspect permission string modifications (`s`, `S`, `t`, `T`).
10. `stat` — Query exact octal permission modes and security attributes.

## Practice Drill Summary
* **Task Performed:** Configured SUID on test executables, SGID on shared collaborative folders, and Sticky Bit controls on public labs using both symbolic and 4-digit octal methods. Verified behaviors via `ls -l` and executed searches.
* **Verification:** Confirmed flag transitions successfully rendered in permission strings and captured evidence screenshots.

## Key Takeaways & Surprises
* **Security Implications:** Misconfigured SUID binaries owned by root represent major privilege escalation vectors if vulnerable, making regular audits via `find` vital for server hardening.

## Repository Navigation
* **Previous Day:** [Day 07: Ownership (`chown`/`chgrp`)](../day-07-ownership/)
* **Next Day:** [Day 09: Access Control Lists (ACLs)](../day-09-acls/)
