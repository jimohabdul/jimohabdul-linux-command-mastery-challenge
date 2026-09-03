# Practice Drill: Process & Service Checkpoint

## Workflow Executed:
1. **System Health & Resources**: Audited uptime, load averages, and RAM allocation via `uptime` and `free -h`.
2. **Service Verification**: Checked the runtime states of three key services (`ssh`, `rsyslog`, and system daemon) using `systemctl status`.
3. **Task Scheduling Audit**: Inspected active automated workloads via `crontab -l`.
