#!/bin/bash

BASE="/home/aveshpadaya/shell-scripting/Projects/files"
DAYS=10
DEPTH=1
RUN=0

# Check if base directory exists
if [ ! -d "$BASE" ]; then
    echo "Directory does not exist: $BASE"
    exit 1
fi

# Create archive if not present
if [ ! -d "$BASE/archive" ]; then
    mkdir -p "$BASE/archive" || { echo "Failed to create archive directory"; exit 1; }
fi

# Safely find files >20MB and archive them
find "$BASE" -maxdepth "$DEPTH" -type f -size +20M -print0 | while IFS= read -r -d '' file; do
    if [ $RUN -eq 0 ]; then
        echo "[$(date '+%y-%m-%d %H:%M:%S')] archiving $file ==> $BASE/archive"
        gzip "$file" || { echo "gzip failed for $file"; exit 1; }
        mv "$file.gz" "$BASE/archive" || { echo "Failed to move $file.gz"; exit 1; }
    fi
done
