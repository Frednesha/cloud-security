#!/bin/bash
free -h > ~/backups/freemem/free_mem.txt
df -t > ~/backups/diskuse/disk_usage.txt
lsof > ~/backups/openlist/open_list.txt
df -h ~/backups/freedisk/free_disk.txt
