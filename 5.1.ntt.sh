#!/bin/bash
echo $0 starting...
mkdir -p hw5dir/sub{1..500}
_blrp="alpha\nbeta\ngamma\ndelta\nepsilon"
for d in {1..500}; do 
	echo -e $_blrp>>"hw5dir/sub${d}/hw5file.txt"
done
echo $0 finished

