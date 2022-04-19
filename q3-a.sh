#! /bin/bash
filesize=$(wc -c $1 | awk '{print $1}')
echo "Size of the file = $filesize"
