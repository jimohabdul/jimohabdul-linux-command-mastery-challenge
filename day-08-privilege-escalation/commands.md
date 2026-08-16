# Day 8: Commands Reference

Here are the 10 core commands covered under **Privilege Escalation & Identity**:

1. **`sudo`**
   * **Syntax:** `sudo <command>`
   * **Purpose:** Executes a single command with root (superuser) privileges based on system security policy.

2. **`sudo -i`**
   * **Syntax:** `sudo -i`
   * **Purpose:** Opens an interactive root login shell, loading root's home directory and environmental variables.

3. **`sudo -u`**
   * **Syntax:** `sudo -u <username> <command>`
   * **Purpose:** Runs a specific command as a designated user account other than root.

4. **`sudo !!`**
   * **Syntax:** `sudo !!`
   * **Purpose:** Instantly re-runs the previous command automatically prepended with `sudo`.

5. **`sudo -l`**
   * **Syntax:** `sudo -l`
   * **Purpose:** Lists the permitted and restricted `sudo` commands assigned to the current user.

6. **`visudo`**
   * **Syntax:** `sudo visudo`
   * **Purpose:** Safely edits the `/etc/sudoers` file with built-in syntax checking to prevent configuration lockouts.

7. **`su`**
   * **Syntax:** `su <username>`
   * **Purpose:** Switches the current user session to another account while retaining existing environment variables.

8. **`su -`**
   * **Syntax:** `su - <username>`
   * **Purpose:** Switches user accounts and simulates a full login shell, clearing existing environment variables.

9. **`whoami`**
   * **Syntax:** `whoami`
   * **Purpose:** Prints the effective username of the currently active user session.

10. **`id`**
    * **Syntax:** `id`
    * **Purpose:** Displays user identity attributes, including User ID (UID), Primary Group ID (GID), and group memberships.
