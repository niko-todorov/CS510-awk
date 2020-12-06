#!/bin/bash
mkdir -p hw5dir
for d in $(seq 5); do 
	mkdir -p hw5dir\/sub$d
	for l in $(seq 5); do 
		echo "line: $l" >> hw5dir\/sub$d\/hw5file
	done
done
echo that\'s all folks!
