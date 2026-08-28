# Practice Drill: Text Processing & Pipes Checkpoint

## Workflow Executed:
1. **Sample Log Generation**: Created a mock raw log file containing mixed informational, warning, and error events with timestamps.
2. **Pipeline Construction**: Built a single chained pipeline (`cat log.txt | grep -i "error" | awk '{print $1}' | sort | uniq`) to filter errors, extract timestamps, sort results, and eliminate duplicate entries.
3. **Audit & Validation**: Verified the output integrity and documented the data transformation stages.
