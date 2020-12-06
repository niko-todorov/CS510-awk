#!/bin/bash
echo starting...
# mkdir -p hw5dir/sub{001..500}
mkdir -p hw5dir/sub{1..5}
_blrp="alpha\nbeta\ngamma\ndelta\nepsilon"
for d in {1..5}; do 
        # mkdir "./hw5dir/sub${d}"
	echo -e $_blrp>>"hw5dir/sub${d}/hw5file"
done
echo the end

