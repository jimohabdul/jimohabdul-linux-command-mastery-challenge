# Commands Reference: Day 08 - Special Permissions

---

### 1. `chmod u+s`
* **Purpose:** Sets the SUID (Set User ID) bit on an executable file.
* **Syntax:** `chmod u+s filename`
* **Example:** `chmod u+s test-script.sh`
* **When to use:** Permitting standard users to execute binaries with the effective rights of the file owner (e.g., root).

### 2. `chmod g+s`
* **Purpose:** Sets the SGID (Set Group ID) bit. On directories, forces new files to inherit parent group ownership.
* **Syntax:** `chmod g+s directoryname`
* **Example:** `chmod g+s shared-folder/`
* **When to use:** Team collaboration directories where shared group access must be automatically enforced.

### 3. `chmod +t`
* **Purpose:** Sets the Sticky Bit on a directory to prevent users from deleting or renaming files they do not own.
* **Syntax:** `chmod +t directoryname`
* **Example:** `chmod +t public-lab/`
* **When to use:** Protecting public shared spaces like `/tmp` against malicious file deletion.

### 4. `chmod 4755`
* **Purpose:** Octal notation method to assign SUID alongside standard `rwxr-xr-x` permissions.
* **Syntax:** `chmod 4755 filename`
* **Example:** `chmod 4755 test-script.sh`
* **When to use:** Combining SUID capability directly into a single absolute permission assignment.

### 5. `chmod 2755`
* **Purpose:** Octal notation method to assign SGID alongside standard permissions.
* **Syntax:** `chmod 2755 directoryname`
* **Example:** `chmod 2755 shared-folder/`
* **When to use:** Quick initialization of group-inheriting workspace folders.

### 6. `chmod 1777`
* **Purpose:** Octal notation method to assign the Sticky Bit alongside full public read/write/execute permissions.
* **Syntax:** `chmod 1777 directoryname`
* **Example:** `chmod 1777 public-lab/`
* **When to use:** Setting up secure public drop folders.

### 7. `find / -perm /4000`
* **Purpose:** Scans a path for files with the SUID bit set.
* **Syntax:** `find [path] -perm /4000`
* **Example:** `find / -perm /4000 2>/dev/null`
* **When to use:** Security auditing and hunting for potential privilege escalation backdoors.

### 8. `find / -perm /2000`
* **Purpose:** Scans for files or folders possessing the SGID bit.
* **Syntax:** `find [path] -perm /2000`
* **Example:** `find / -perm /2000 2>/dev/null`
* **When to use:** Reviewing group inheritance boundaries across enterprise filesystems.

### 9. `ls -l`
* **Purpose:** Identifies special permission flags (`s`, `S`, `t`, `T`) within long listing outputs.
* **Syntax:** `ls -l [target]`
* **Example:** `ls -l test-script.sh`
* **When to use:** Quick visual verification of active permission attributes.

### 10. `stat`
* **Purpose:** Queries deep file metadata fields including raw octal mode configurations.
* **Syntax:** `stat [filename]`
* **Example:** `stat test-script.sh`
* **When to use:** Programmatic inspection of exact permission configurations.
