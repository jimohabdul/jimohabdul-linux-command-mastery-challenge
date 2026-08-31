# Practice Drill: Controlling Processes with Signals

## Practice Sequence Executed:
1. **Background Execution**: Launched a long-running command (`sleep 300 &`).
2. **Job Suspension**: Brought the job to the foreground (`fg`) and suspended it using `Ctrl+Z`.
3. **Background Resumption**: Resumed the suspended job in the background using `bg`.
4. **Persistent Task**: Started a separate log-independent command using `nohup sleep 400 &` to ensure survival past shell logouts.
