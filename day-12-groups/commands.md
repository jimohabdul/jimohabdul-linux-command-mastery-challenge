# Commands Covered on Day 12: Groups & Access Circles

1. `groupadd`

- **Syntax:** `groupadd groupname`
- **Explanation:** Creates a new security group on the system, establishing a baseline access circle for multiple user accounts.

2. `groupdel`
- **Syntax:** `groupdel groupname`
- **Explanation:** Deletes an existing group from the system configuration files, provided it isn't the primary group of any active user.

3. `gpasswd -a`
- **Syntax:** `gpasswd -a username groupname`
- **Explanation:** Adds a specified user account into an administrative or secondary group safely.

4. `gpasswd -d`
- **Syntax:** `gpasswd -d username groupname`
- **Explanation:** Removes a user from a designated group's membership list.

5. `getent group`
- **Syntax:** `getent group groupname`
- **Explanation:** Queries the system's group databases (defined in `/etc/group`) to display group details and member lists.

6. `getent passwd`
- **Syntax:** `getent passwd username`
- **Explanation:** Fetches user entry records from the system password database, revealing user IDs, shells, and home directories.

7. `groups`
- **Syntax:** `groups username`
- **Explanation:** Prints all the group memberships associated with the currently logged-in user or a specified account.

8. `id -Gn`
- **Syntax:** `id -Gn username`
- **Explanation:** Displays only the names (`-n`) of all groups (`-G`) that a user belongs to, providing a clean, readable list.

9. `newgrp`
- **Syntax:** `newgrp groupname`
- **Explanation:** Changes the current user's active primary group ID during a login session to a specified group.

10. `cat /etc/group`
- **Syntax:** `cat /etc/group`
- **Explanation:** Directly outputs the contents of the local group configuration file, showing every group and its associated member accounts.
