
#!/bin/bash

# Usage: viewer.sh <file>
FILE="$1"

# check is file exists
if [ ! -f "$FILE" ] ; then
  echo "Error: File not found"
  exit 1
fi

# output file contents
echo "Contents of $FILE:"
cat "$FILE"

# show file info
echo -e "\nFILE info:"
ls -l "$FILE"
