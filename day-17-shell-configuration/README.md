# Day 17: Persisting Configuration

## Overview
Day 17 of the 30-Day Linux Command Mastery Challenge covers shell configuration persistence. While variables exported directly to the terminal vanish when the session closes, modifying initialization configuration files like `~/.bashrc` ensures environment variables, custom paths, and command shortcuts remain permanent across reboots.


## Objectives
* Edit and manage user-specific shell initialization files (`~/.bashrc`).
* Reload session configurations dynamically using `source`.
* Explore global system configurations (`/etc/environment`, `/etc/bash.bashrc`).
* Create and inspect custom command shortcuts using `alias`, `type`, `which`, and `whereis`.
