#!/bin/env bash
echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

marco () {
	workingDirectory=$(pwd)
}

polo () {
	cd "$workingDirectory"
}	
