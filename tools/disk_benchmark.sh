#!/bin/bash

if [ -z $1 ] ;then
    echo 'pls input out file/disk';
    exit 0;
fi

echo "Write testing 4K"
time sh -c "dd if=/dev/zero of=$1 bs=4k count=100k; rm -f $1 && sync"
echo "Write testing 8K"
time sh -c "dd if=/dev/zero of=$1 bs=8k count=100k; rm -f $1 && sync"
echo "Write testing 16K"
time sh -c "dd if=/dev/zero of=$1 bs=16k count=100k && sync"

echo "Read testing 4K"
time sh -c "dd if=$1 of=/dev/zero bs=4k count=100k"
echo "Read testing 8K"
time sh -c "dd if=$1 of=/dev/zero bs=8k count=100k"
echo "Read testing 16K"
time sh -c "dd if=$1 of=/dev/zero bs=16k count=100k"

rm $1;
