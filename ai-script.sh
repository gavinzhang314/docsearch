#!/bin/bash

# Check if directory argument was passed
if [ $# -eq 0 ]; then
  echo "Error: No directory provided."
  exit 1
fi

# Check if directory exists
if [ ! -d "$1" ]; then
  echo "Error: Directory does not exist."
  exit 1
fi

# Loop through every .txt file in the directory
for file in "$1"/*.txt; do
  # Check if file exists
  if [ -f "$file" ]; then
    # Count the number of lines that contain the word "vista"
    count=$(grep -c "vista" "$file")
    # Print the results
    echo "$file: $count"
  fi
done

