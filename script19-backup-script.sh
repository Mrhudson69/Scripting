#!/bin/bash

# Backup script

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_dir> <backup_dir>"
    echo "Please try again"
    exit 1
fi

# Check if rsync is installed
if ! command -v rsync > /dev/null 2>&1; then
    echo "rsync is not installed"
    echo "Please use a package manager to install rsync and try again"
    exit 2
fi

# Capture the current date in DD-MM-YY format
current_date=$(date +%d-%m-%y)

# Define rsync options
rsync_options="-avb --backup-dir=$2/$current_date --delete"

# Run rsync with the defined options
rsync $rsync_options "$1" "$2" >> "backup_$current_date.log" 2>&1
