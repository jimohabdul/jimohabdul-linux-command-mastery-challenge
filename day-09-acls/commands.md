# Commands Reference: Day 09 - Access Control Lists (ACLs)

---

### 1. `getfacl`
* **Purpose:** Displays the Access Control List and file ownership metadata.
* **Syntax:** `getfacl filename`
* **Example:** `getfacl acl-test.txt`
* **When to use:** Inspecting granular user and group permissions beyond traditional owner-group-other attributes.

### 2. `setfacl -m`
* **Purpose:** Adds or modifies a specific user or group ACL entry.
* **Syntax:** `setfacl -m u:username:permissions filename`
* **Example:** `sudo setfacl -m u:nobody:rw- acl-test.txt`
* **When to use:** Granting targeted file access to specific users without altering general ownership.

### 3. `setfacl -x`
* **Purpose:** Removes a specific user or group ACL entry.
* **Syntax:** `setfacl -x u:username filename`
* **Example:** `sudo setfacl -x u:nobody acl-test.txt`
* **When to use:** Revoking specific granular privileges from a user.

### 4. `setfacl -b`
* **Purpose:** Removes all extended ACL entries, restoring standard DAC permissions.
* **Syntax:** `setfacl -b filename`
* **Example:** `sudo setfacl -b acl-test.txt`
* **When to use:** Resetting a file back to default owner-group-other permissions.

### 5. `setfacl -R`
* **Purpose:** Recursively applies ACL modifications across a directory tree.
* **Syntax:** `setfacl -R -m u:username:rwx directory/`
* **Example:** `sudo setfacl -R -m u:nobody:rwx acl-dir/`
* **When to use:** Batch-updating collaborative workspace permissions.

### 6. `setfacl -d`
* **Purpose:** Sets default ACL rules on a directory for automatic inheritance by new subfiles.
* **Syntax:** `setfacl -d -m u:username:permissions directory/`
* **Example:** `sudo setfacl -d -m u:nobody:rwx acl-dir/`
* **When to use:** Enforcing shared team write access on new project files.

### 7. `setfacl --mask`
* **Purpose:** Explicitly recalculates or sets the effective permissions mask.
* **Syntax:** `setfacl --mask filename`
* **Example:** `sudo setfacl --mask acl-test.txt`
* **When to use:** Re-establishing the maximum permission boundary for extended entries.

### 8. `ls -l` (ACL Indicator)
* **Purpose:** Highlights extended ACL usage via a trailing plus sign (`+`).
* **Syntax:** `ls -l filename`
* **Example:** `ls -l acl-test.txt`
* **When to use:** Instant visual auditing of whether a file has extended access controls.

### 9. `chmod` (Mask Interaction)
* **Purpose:** Modifies group permissions on an ACL-enabled file, which updates the ACL mask instead.
* **Syntax:** `chmod g-w filename`
* **Example:** `chmod g-w acl-test.txt`
* **When to use:** Managing overall permission ceilings using standard commands.

### 10. `getfacl -R`
* **Purpose:** Recursively dumps ACL rules across all files and subfolders.
* **Syntax:** `getfacl -R directory/`
* **Example:** `getfacl -R acl-dir/`
* **When to use:** Comprehensive security audits of complex directory trees.
