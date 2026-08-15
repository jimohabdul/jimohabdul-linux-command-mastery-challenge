# Day 10: Phase 2 Capstone / Security Hardening Checkpoint
# Phase 2 - Permissions, Ownership & Security | Day 10 of 30

##  Objective
Synthesize and apply all concepts learned in Phase 2 (standard permissions, ownership boundaries, special permissions, and ACLs) to conduct a thorough security audit, remediate privilege escalation risks, and harden a mock enterprise environment.

##  Tools & Techniques Applied
1. Metadata & Ownership Auditing (`ls -l`, `stat`)
2. Privilege & Group Verification (`id`, `groups`)
3. SUID/SGID Threat Hunting (`find / -perm /4000`, `find / -perm /2000`)
4. Granular Permission Restructuring (`chown`, `chmod`, `setfacl`)
5. Comprehensive Audit Logging & Verification

##  Capstone Execution Summary
* **Task Performed:** Provisioned a simulated insecure directory structure (`enterprise-app/`), executed full threat sweeps, identified improper root-owned SUID executables and overly permissive files, applied remediation commands, and secured collaboration directories using ACLs.
* **Verification:** Confirmed system integrity via post-remediation audits and captured evidence screenshots.

##  Key Takeaways & Surprises
* **Defense in Depth:** True Linux security relies on layering traditional DAC, careful ownership management, minimizing SUID attack surfaces, and leveraging ACLs for precise least-privilege enforcement.

##  Repository Navigation
* **Previous Day:** [Day 09: Access Control Lists (ACLs)](../day-09-acls/)
* **Next Day:** [Day 11: Phase 3 Preview / Process & Service Management](../day-11-processes/)
