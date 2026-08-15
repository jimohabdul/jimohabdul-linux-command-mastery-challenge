# Commands Reference: Day 06 - Reading & Setting Permissions

---

### 1. `ls -l`
* **Purpose:** Displays detailed file listings, including file type, 10-character permission string, hard link count, owner, group, size, and modification timestamp.
* **Syntax:** `ls -l [file_or_directory]`
* **Example:** `ls -l test.sh`
* **When to use:** Whenever you need an immediate visual audit of who can read, write, or execute a file.

### 2. `chmod` (Relative `+/-`)
* **Purpose:** Adds (`+`) or removes (`-`) specific permission bits for user/owner (`u`), group (`g`), others (`o`), or all (`a`).
* **Syntax:** `chmod [ugoa][+-][rwx] filename`
* **Example:** `chmod u+x,og-w test.sh`
* **When to use:** Incremental permission tweaking without rewriting the entire permission set.

### 3. `chmod` (Assignment `=`)
* **Purpose:** Explicitly sets exact permissions, overwriting previous configurations for specified user classes.
* **Syntax:** `chmod [ugoa]=[rwx] filename`
* **Example:** `chmod u=rwx,go=rx test.sh`
* **When to use:** Enforcing a known, strict baseline configuration regardless of prior settings.

### 4. `chmod 755` (Octal)
* **Purpose:** Applies standard executable structure where the owner has full control (7 = rwx) and group/others have read/execute access (5 = r-x).
* **Syntax:** `chmod 755 filename`
* **Example:** `chmod 755 test.sh`
* **When to use:** Scripts, binary executables, and web server directories (`public_html`) that need to be globally readable/runnable.

### 5. `chmod 644` (Octal)
* **Purpose:** Standard file security where the owner can read and write (6 = rw-), while groups and others can only read (4 = r--).
* **Syntax:** `chmod 644 filename`
* **Example:** `chmod 644 README.md`
* **When to use:** Default configurations for static documents, text files, and source code files.

### 6. `chmod 600` (Octal)
* **Purpose:** Highly restrictive security granting read/write access solely to the file owner; zero access for group and others.
* **Syntax:** `chmod 600 filename`
* **Example:** `chmod 600 ~/.ssh/id_rsa`
* **When to use:** Protecting private keys, configuration files containing credentials, or sensitive local logs.

### 7. `chmod -R`
* **Purpose:** Recursively applies permission changes across an entire directory tree.
* **Syntax:** `chmod -R [permissions] directory/`
* **Example:** `chmod -R 755 var/www/html/`
* **When to use:** Provisioning web assets or fixing whole project directory permissions at once.

### 8. `umask`
* **Purpose:** Displays or modifies the user file-creation mask in octal format.
* **Syntax:** `umask [octal_value]`
* **Example:** `umask 0022`
* **When to use:** Controlling default security boundaries for newly spawned files/directories in system profiles (`.bashrc`).

### 9. `umask -S`
* **Purpose:** Outputs the current umask in a human-readable symbolic format.
* **Syntax:** `umask -S`
* **Example:** `umask -S` -> `u=rwx,g=rx,o=rx`
* **When to use:** Quick human-friendly audits of your current creation constraints.

### 10. `stat -c '%A %U %G'`
* **Purpose:** Queries specific filesystem metadata format strings. `%A` = permission string, `%U` = owner, `%G` = group.
* **Syntax:** `stat -c '[format_string]' filename`
* **Example:** `stat -c '%A %U %G' test.sh`
* **When to use:** Scripting permission checks or gathering exact metadata without parsing raw `ls -l` outputs.
