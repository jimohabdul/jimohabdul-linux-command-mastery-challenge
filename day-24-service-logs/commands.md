# Commands Practiced on Day 24

1. `systemctl list-units --type=service` - List active services.
2. `systemctl list-units --state=failed` - Identify failed services.
3. `systemctl daemon-reload` - Reload systemd manager.
4. `journalctl` - Access systemd journal logs.
5. `journalctl -f` - Stream journal logs live.
6. `journalctl -u` - Filter logs by specific service.
7. `journalctl --since` - Filter logs by date/time.
8. `journalctl -p err` - Filter logs by error priority.
9. `tail -f /var/log/syslog` - Track system log files live.
10. `tail -f /var/log/auth.log` - Track authentication logs live.
