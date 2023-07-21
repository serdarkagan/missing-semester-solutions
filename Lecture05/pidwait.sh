#!/usr/bin/env bash

echo "Running program $0 with $# arguments with pid $$"
n=0
$(kill -0 $1) 
while [ $? -eq 0 ]
do
sleep 1
n=$(( $n + 1 ))
$(kill -0 $1) 
done
echo "Sleeped $n seconds."
