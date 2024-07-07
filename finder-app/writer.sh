#!/bin/sh
writefile=$1
writestr=$2
if [ $# = 2 ];then
    # Extract the directory path from the full filename
    dir_path=$(dirname "$writefile")

    # Create the directory if it does not exist
    mkdir -p "$dir_path"
    echo "$writestr" > "$writefile"
    exit 0
else
    echo "$#" 
    exit 1
fi