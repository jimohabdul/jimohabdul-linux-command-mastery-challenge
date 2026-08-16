# Day 8: Evidence & Execution Logs

## 1. Privilege Escalation & Quick-Recall (`sudo !!`)
```bash
$ tail /var/log/syslog
tail: /var/log/syslog: Permission denied

$ sudo !!
tail /var/log/syslog
[sudo] password for user: 
Aug 16 11:00:00 DESKTOP systemd[1]: Started session.
$ whoami
abdulkaidirjimoh

$ id
uid=1000(abdulkaidirjimoh) gid=1000(abdulkaidirjimoh) groups=1000(abdulkaidirjimoh),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),122(lpadmin),134(lxd),135(sambashare)

$ sudo -l
Matching Defaults entries for abdulkaidirjimoh on DESKTOP:
    env_reset, mail_badpass, secure_path="/usr/local/sbin:/usr/local/sbin:/usr/local/sbin:/usr/local/sbin:/usr/local/sbin:/usr/local/sbin..."

User abdulkaidirjimoh may run the following commands on DESKTOP:
    (ALL : ALL) ALL
