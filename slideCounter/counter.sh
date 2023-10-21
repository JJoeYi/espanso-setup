#!/bin/bash

# Path to the counter file
COUNTER_FILE="./counter.txt"

# Read the current count, assume 0 if the file doesn't exist
if [[ -f $COUNTER_FILE ]]; then
    count=$(cat $COUNTER_FILE)
else
    count=0
fi

# Increment the count
count=$((count + 1))

# Write the count back to the file
echo $count > $COUNTER_FILE

# Output the count so that espanso can use it
echo $count
