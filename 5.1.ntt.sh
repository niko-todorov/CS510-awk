#!/bin/bash
echo 5.1 starting...
mkdir -p hw5dir/sub{001..500}
_blrp="alpha\nbeta\ngamma\ndelta\nepsilon"
for d in {001..500}; do 
	echo -e $_blrp>>"hw5dir/sub${d}/hw5file.txt"
done
echo 5.1 finished

