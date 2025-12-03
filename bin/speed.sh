#!/bin/bash

# Speed stat script for tmux status bar
# MacOS

if [[ "$OSTYPE" != "darwin"* ]]
then
  echo "Only works on macOS" 1>&2
  exit 1
fi

DOWNB=$(netstat -I en0 -nib|tail -n 1|awk '{print $7}')
UPB=$(netstat -I en0 -nib|tail -n 1|awk '{print $10}')
sleep 1 
DOWNBN=$(netstat -I en0 -nib|tail -n 1|awk '{print $7}')
UPBN=$(netstat -I en0 -nib|tail -n 1|awk '{print $10}')
DOWNDIF=$(echo $((DOWNBN - DOWNB)) )
UPDIF=$(echo $((UPBN - UPB)) )
if [ $((DOWNDIF/1024/2)) -gt 1024 ]
    then
        printf "Down: %sMB/s " "$(echo "scale=2; $DOWNDIF/1024/1024/2" | bc)"
    else
        printf "Down: %sKB/s " "$((DOWNDIF/1024/2))"
fi

if [ $((UPDIF/1024/2)) -gt 1024 ]
    then
        printf "Up: %sMB/s " "$(echo "scale=2; $UPDIF/1024/1024/2" | bc)"
    else
        printf "Up: %sKB/s " "$((UPDIF/1024/2))"
fi



printf "\n"
