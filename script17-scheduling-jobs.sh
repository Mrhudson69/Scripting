#!/bin/bash


# --- GUIDE ----
# crontab -e
# to edit other user contab crontab -u username -e

# 0 0 * * * /home/username/scripts/scriptname.sh

logfile=job_results.log

/usr/bin/echo "This script is ran at the following time: $(/usr/bin/date)" >> logfile