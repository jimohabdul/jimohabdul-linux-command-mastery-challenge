# Practice Drill: Networking Basics

## Practice Sequence Executed:
1. **Interface & Route Audit**: Identified local IP addresses via `ip a` and located the default gateway using `ip route`.
2. **Connectivity Test**: Verified round-trip packet delivery to a public host using `ping -c 4 8.8.8.8`.
3. **Web Header Inspection**: Queried remote server metadata using `curl -I https://github.com`.
4. **Port Auditing**: Enumerated active listening services and sockets using `sudo ss -tulnp`.
