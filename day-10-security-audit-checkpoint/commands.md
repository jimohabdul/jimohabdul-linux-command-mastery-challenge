# Commands Covered on Day 10: Security Checkpoint & Audit

1. `find / -perm /4000`
- **Syntax:** `find / -perm /4000 2>/dev/null`
- **Explanation:** Scans the entire filesystem for files with the SUID bit set, which allows users to execute programs with the file owner's privileges. Essential for security audits.

2. `last`
- **Syntax:** `last`
- **Explanation:** Displays a listing of last logged-in users by reading the `/var/log/wtmp` file, helping track historical session activity.

3. `lastlog`
- **Syntax:** `lastlog`
- **Explanation:** Formats and prints the login history of all users, highlighting accounts that have never logged in.

4. `w`
- **Syntax:** `w`
- **Explanation:** Shows who is currently logged in and what processes they are running, providing a real-time activity overview.

5. `who`
- **Syntax:** `who`
- **Explanation:** Prints a concise list of users currently logged into the system.

6. `groups`
- **Syntax:** `groups [username]`
- **Explanation:** Displays the group memberships for the current user or a specified account, verifying access privileges.

7. `passwd`
- **Syntax:** `passwd`
- **Explanation:** Used to update a user's authentication token or password securely.

8. `chage -l`
- **Syntax:** `chage -l username`
- **Explanation:** Lists password aging information, showing when credentials expire and when account changes were last made.

9. `lastb`
- **Syntax:** `lastb`
- **Explanation:** Shows bad login attempts by reading the `/var/log/btmp` file, critical for detecting brute-force attacks.

10. `history | grep sudo`
- **Syntax:** `history | grep sudo`
- **Explanation:** Filters command history to review all administrative privileges invoked via `sudo` during the current terminal session.
