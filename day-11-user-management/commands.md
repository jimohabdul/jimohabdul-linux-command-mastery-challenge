# Commands Covered on Day 11: Creating & Managing Users

1. `useradd`
- **Syntax:** `useradd username`
- **Explanation:** A low-level utility used to create a new user account without automatically generating a home directory or mailbox. Useful for custom automated script provisioning.

2. `useradd -m`
- **Syntax:** `useradd -m username`
- **Explanation:** Creates a new user account and automatically generates their home directory under `/home/username`, copying skeleton files.

3. `useradd -m -s`
- **Syntax:** `useradd -m -s /bin/bash username`
- **Explanation:** Creates a user with both a home directory and a specified default login shell (like Bash), ensuring interactive usability right from creation.

4. `adduser`
- **Syntax:** `adduser username`
- **Explanation:** A high-level, interactive Debian/Ubuntu utility wrapper that prompts for passwords and user information while automatically setting up home directories and groups.

5. `passwd`
- **Syntax:** `passwd username`
- **Explanation:** Updates or sets the password authentication token for a specified user account securely.

6. `usermod -aG`
- **Syntax:** `usermod -aG groupname username`
- **Explanation:** Appends (`-a`) a user to a supplementary/secondary group (`-G`) without removing them from their existing groups.

7. `usermod -s`
- **Syntax:** `usermod -s /bin/sh username`
- **Explanation:** Modifies the default login shell for an existing user account.

8. `usermod -l`
- **Syntax:** `usermod -l newname oldname`
- **Explanation:** Changes the login name (username) of an existing user account while keeping the underlying user ID and home directory intact.

9. `userdel`
- **Syntax:** `userdel username`
- **Explanation:** Deletes a user account from the system files (`/etc/passwd`, etc.) while leaving their home directory and files untouched.

10. `userdel -r`
- **Syntax:** `userdel -r username`
- **Explanation:** Deletes a user account and completely removes their home directory and mail spool from the system, ensuring a clean teardown.
