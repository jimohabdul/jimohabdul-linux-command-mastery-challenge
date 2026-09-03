# Day 24: Deeper Service Management & Logs

## Overview
Day 24 deepens Linux service troubleshooting by exploring failed unit diagnostics, daemon configuration reloads, and advanced system logging analysis using `journalctl`.

## Objectives
* Enumerate loaded services and pinpoint failed units (`list-units --state=failed`).
* Refresh systemd configurations using `daemon-reload`.
* Query service-specific logs, filter by timeframe (`--since`), and target error priorities (`-p err`).
* Stream live logs using `journalctl -f` and traditional log tailing (`/var/log/syslog`).
