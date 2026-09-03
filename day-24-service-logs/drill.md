# Practice Drill: Deeper Service Management & Logs

## Practice Sequence Executed:
1. **Fault Audit**: Checked for failing services across the system using `systemctl list-units --state=failed`.
2. **Log Extraction**: Queried today's logs for a specific service (`ssh`) filtered down to error priorities using `journalctl -u ssh --since "today" -p err`.
3. **Live Tailing**: Followed real-time log activity using `journalctl -f`.
