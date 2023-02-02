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

# Initialize a variable to store the total number of lines
total=0

# Loop through every .txt file in the directory
for file in "$1"/*.txt; do
  # Check if file exists
  if [ -f "$file" ]; then
    # Count the number of lines that contain the word "vista"
    count=$(grep -c "vista" "$file")
    # Add the count to the total
    total=$((total + count))
  fi
done

# Print the results
echo "Total number of lines containing the word 'vista': $total"

