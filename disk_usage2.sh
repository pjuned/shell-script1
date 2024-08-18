#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1
message=""

while IFS= read -r line; do
    # Extract the usage percentage (without the %) and the partition name
    usage=$(echo $line | awk '{print $6}' | cut -d% -f1)
    partition=$(echo $line | awk '{print $1}')

    # Check if usage exceeds the threshold
    if [ "$usage" -ge "$DISK_THRESHOLD" ]; then
        message+="High Disk Usage on $partition: $usage<br>"
    fi
done <<< "$DISK_USAGE"

echo "message=$message"
