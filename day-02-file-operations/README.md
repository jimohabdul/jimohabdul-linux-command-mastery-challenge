# Day 02: Creating, Copying, Moving, and Deleting
Phase 1 - File Navigation & Filesystem Mastery | Day 2 of 30

## Overview
Today marked an essential step forward in my 30-Day Linux Command Mastery Challenge. Moving beyond simple file viewing and navigation, I focused on mastering active file manipulation—learning how to generate directories on the fly, structure hierarchical projects, safely back up datasets, relocate files, and perform cleanups without breaking the system.

## Commands Covered Today
See `commands.md` for full syntax breakdowns and practical use-cases, covering:
* `mkdir` and `mkdir -p` (Creating directories and nested directory structures)
* `touch` (Generating empty files or updating timestamps)
* `cp` and `cp -r` (Copying individual files and recursively copying entire directories)
* `mv` (Moving or renaming files and directories)
* `rm`, `rm -r`, and `rm -rf` (Removing files and recursive/forced deletion)
* `rmdir` (Removing empty directories safely)

## What I Practiced
During today's practical drill, I executed a series of targeted file system tasks:
1. **Nested Directory Generation:** Created a multi-level directory tree (`practice/2026/april`) with a single command using `mkdir -p`.
2. **File Generation:** Created multiple empty text files inside the target directory using `touch`.
3. **Recursive Backup:** Created a complete backup copy of the working directory structure using `cp -r`.
4. **File Renaming & Restructuring:** Used the `mv` command to modify filenames and test relocation paths.
5. **Safe Cleanup Operations:** Experimented with standard file deletion (`rm`) and strict empty directory removal (`rmdir`) to understand how Linux safeguards against accidental data loss.

## Challenges & Troubleshooting
Working through Day 2 came with a couple of real-world obstacles that deepened my understanding:
* **Pathspec and Directory Mismatches:** Initially, when attempting to stage my work for Git, I encountered a `pathspec 'day-02-file-operations/' did not match any files` error. This happened because I hadn't formally initialized and moved my items into the dedicated day folder yet. I resolved this by properly establishing the directory tree (`mkdir -p day-02-file-operations/evidence`) and relocating my backup files before running `git add`.
* **Safeguards of `rmdir` vs. `rm`:** While trying to clean up empty folders, `rmdir` threw errors when directories still contained active files. This served as a great practical reminder of Linux safety mechanisms—`rmdir` explicitly refuses to delete non-empty directories unless you clear the contents first or use recursive flags with `rm`.

## What Surprised Me
Using `mkdir -p` is an absolute game-changer. Being able to build an entire nested directory tree instantly without having to manually create each parent folder one by one saves a tremendous amount of time and reduces script errors.

## Evidence
Terminal screenshots and transcript logs documenting the successful drill execution are stored in the `evidence/` directory.

## Related
* Previous day: [../day-01-file-navigation/](../day-01-file-navigation/)
* Next day: ../day-03-file-viewing/
