#!/bin/bash

if [ -z "$1" ]; then
    read -p "Path to Initrd to be modified: " input
else
    input="$1"
fi

input=$(readlink -f $input)

timestamp=$(date +%Y%m%d%H%M%S)
temp="temp_$timestamp"
mkdir "$temp"

unmkinitramfs -v $input $temp

sudo nautilus "$temp" 

wait
# start with an empty file
rm -rf $input
touch $input

cd $temp/early
find . -print0 | cpio --null --create --format=newc > $input

# Add the second microcode firmware
cd ../early2
find kernel -print0 | cpio --null --create --format=newc >> $input

# Add the third microcode firmware
if [ -d "../early3" ]; then
    cd ../early3
    find . -print0 | cpio --null --create --format=newc > $input
fi

# Add the actual ram fs file system
cd ../main
find . | cpio --create --format=newc | xz --format=lzma >> $input

rm -rf $temp
