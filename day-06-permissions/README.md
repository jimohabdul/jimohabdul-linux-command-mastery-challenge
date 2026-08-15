# Day 06: Reading & Setting Permissions
# Phase 2 - Permissions, Ownership & Security | Day 6 of 30

## 🎯 Objective
Master the Linux discretionary access control (DAC) model. Learn how to read granular file/directory permission strings, modify access using symbolic and octal notations, manage default configurations via `umask`, and query filesystem metadata programmatically.

---

## 🛠️ Commands Covered Today
Refer to [commands.md](commands.md) for detailed syntax, flags, and practical use cases for the 10 core permission commands:
1. `ls -l` — Display detailed file listings and permission strings.
2. `chmod` (relative `+/-`) — Add or remove specific permission flags.
3. `chmod` (assignment `=`) — Explicitly set exact permissions.
4. `chmod 755` (octal) — Standard executable mapping (rwxr-xr-x).
5. `chmod 644` (octal) — Standard file mapping (rw-r--r--).
6. `chmod 600` (octal) — Restricted private file mapping (rw-------).
7. `chmod -R` — Recursively modify permissions across a directory tree.
8. `umask` — View or configure default file creation masks.
9. `umask -S` — Display the current umask in symbolic format.
10. `stat -c '%A %U %G'` — Query precise permission, owner, and group metadata.

---

## 🔬 Practice Drill Summary
* **Task Performed:** Created a shell script (`test.sh`), analyzed its default state, and systematically applied `rwxr-xr-x` permissions using **three distinct methods**:
  1. **Symbolic Relative Method:** (`chmod u+rwx,g+rx,o+rx`)
  2. **Symbolic Assignment Method:** (`chmod u=rwx,go=rx`)
  3. **Octal Method:** (`chmod 755 test.sh`)
* **Verification:** Confirmed state transitions after each command using `ls -l` and `stat`.

---

## 💡 Key Takeaways & Surprises
* **The SUID/SGID/Sticky Bit Placeholder:** Notice how a 4-digit octal notation (e.g., `0755`) works under the hood, and how special permissions occupy the leading digit.
* **Umask Subtraction Logic:** Umask does not *add* permissions; it acts as a negative mask (bitwise NOT) against the default maximum permissions (`666` for files, `777` for directories).

---

## 📂 Repository Navigation
* **Previous Day:** [Day 05: Links & Checkpoint](../day-05-links-checkpoint/)
* **Next Day:** [Day 07: Ownership (`chown`/`chgrp`)](../day-07-ownership/)
