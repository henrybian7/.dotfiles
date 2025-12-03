#!/bin/bash

# Usage: delete-prefix prefix directory

PRE=$1
DIC=$2
count=0

if [ -z $PRE ]; then
    echo "Usage: ./delete-prefix.sh prefix [directory]"
    echo "where dicrectory is by default the current directory"
    exit
fi

if [ -z $DIC ]; then
    DIC=$PWD
fi

for file in $(ls $DIC | grep "^$PRE")
do
    if [ -f "$file" ]; then
        mv "$file" "$(echo $file | sed -e 's/^'"$PRE"'//')"
        count=$((count+1))
    fi
done

echo "$count file prefix deleted."
