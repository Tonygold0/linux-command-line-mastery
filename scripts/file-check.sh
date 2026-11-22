#!/bin/bash

# Check whether a project file exists

FILE="missing-file.txt"

if [ -f "$FILE" ]; then
    echo "SUCCESS: $FILE exists."
else
    echo "ERROR: $FILE does not exist."
fi
