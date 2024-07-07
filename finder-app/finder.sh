#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# != 2 ];then
    echo "$#" 
    exit 1
else
    if [ -d "$filesdir" ]; then
        cw=$pwd
        echo $cw
        cd $filesdir
        file_count=$(find "." -type f | wc -l)
        matching_lines=$(grep -r $searchstr * | wc -l)
        echo "The number of files are $file_count and the number of matching lines are $matching_lines"
        cd "$cw"
        exit 0
    else
        echo  "$filesdir is not a directory"
        exit 1
    fi
fi