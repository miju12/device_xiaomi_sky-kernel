#!/bin/bash

# Define the patch file
PATCH_FILE="50_add_susfs_in_gki-android12-5.10.patch"

# Check if the patch file exists
if [[ ! -f "$PATCH_FILE" ]]; then
  echo "Error: Patch file '$PATCH_FILE' not found in the current directory."
  exit 1
fi

# Apply the patch
echo "Applying patch '$PATCH_FILE' in the current directory ($(pwd))..."
patch -p1 < "$PATCH_FILE"

# Check the result
if [[ $? -eq 0 ]]; then
  echo "Patch '$PATCH_FILE' applied successfully."
else
  echo "Error: Failed to apply patch '$PATCH_FILE'. Check the output for details."
fi
