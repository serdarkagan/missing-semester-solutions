#!/bin/bash

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
check=$?

echo "Running program $0 with $# arguments with pid $$"
n=0

echo "$script_full_path"
while [ $check -eq 0 ]
do
	bash "${__dir}/mit-missing1.sh" > output.txt 2>> output.txt
	check=$?
	n=$((n + 1))
done
echo "How many runs it took for the script to fail: $n"
