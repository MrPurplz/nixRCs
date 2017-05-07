#!/bin/bash
gh="https://raw.githubusercontent.com/MrPurplz/nixRCs/master/"
base="~/"
rcfiles=(
    '.vimrc'
    '.tmux.conf'
    '.bashrc'
    );

count=0
while [ "x${rcfiles[count]}" != "x" ]
do
       cd
       echo "$base${rcfiles[count]}"
       if [ -f $base${rcfiles[count]} ]; then
           echo "Found rc file. Backing up to $base${rcfiles[count]}.bak"
           cp "$base${rcfiles[count]}" "$base${rcfiles[count]}.bak"
       fi
       echo "Pulling from Github: $gh${rcfiles[count]}"
       wget $gh${rcfiles[x]}
       count=$(( $count + 1 ))
done

