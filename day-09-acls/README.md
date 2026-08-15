# Day 09: Access Control Lists (ACLs)
# Phase 2 - Permissions, Ownership & Security | Day 9 of 30

## Objective
Move beyond traditional owner-group-other limits. Master Linux Access Control Lists (ACLs) to grant granular, user-specific and multi-group permissions using `getfacl` and `setfacl`, manage effective masks, and configure default directory inheritance.

## Commands Covered Today
Refer to [commands.md](commands.md) for detailed syntax, flags, and practical use cases:
1. `getfacl` — Display the Access Control List of a file or directory.
2. `setfacl -m` — Add or update a specific user/group permission entry.
3. `setfacl -x` — Remove a specific user or group ACL entry.
4. `setfacl -b` — Strip all extended ACL entries, reverting to standard DAC.
5. `setfacl -R` — Recursively apply ACL modifications across a directory hierarchy.
6. `setfacl -d` — Configure default ACL rules for automatic sub-file inheritance.
7. `setfacl --mask` — Recalculate or set the effective permission mask.
8. `ls -l` — Identify extended ACL presence via the trailing `+` indicator.
9. `chmod` (Mask interaction) — Adjust ACL masks via standard permission changes.
10. `getfacl -R` — Recursively inspect ACL settings across files and subdirectories.

## Practice Drill Summary
* **Task Performed:** Installed the `acl` package, provisioned test files, audited default states with `getfacl`, applied custom user permissions via `setfacl -m`, verified the `+` sign indicator in `ls -l`, configured default recursive directory policies, and tested ACL cleanups using `-b`.
* **Verification:** Confirmed permissions behaved as expected for specific users and captured evidence screenshots.

## Key Takeaways & Surprises
* **The Permission Mask:** The ACL mask acts as an upper ceiling for all extended permissions, meaning a strict mask can inadvertently block access even if a specific user rule allows it.

## Repository Navigation
* **Previous Day:** [Day 08: Special Permissions (SUID, SGID, Sticky Bit)](../day-08-special-permissions/)
* **Next Day:** [Day 10: Phase 2 Capstone / Security Hardening Checkpoint](../day-10-capstone/)
