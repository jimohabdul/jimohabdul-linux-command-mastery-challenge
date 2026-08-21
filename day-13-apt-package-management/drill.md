# Practice Drill: APT Package Management

## Steps Performed:
1. **Refreshed Index**: Executed `sudo apt update` to ensure repository lists are up-to-date.
2. **Explored Utility**: Searched for a utility (`apt search htop`) and inspected its description (`apt show htop`).
3. **Installation**: Installed the utility using `sudo apt install htop -y`.
4. **Purged Cleanup**: Tested complete removal including config files using `sudo apt purge htop -y`.
5. **Dependency Cleanup**: Ran `sudo apt autoremove -y` to clean up any leftover orphaned packages.
