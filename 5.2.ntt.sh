#!/bin/bash
# cd /mnt/c/projects/GitHub/chapman/hw5
# ends in 0, the delta should be: a phrase of your choosing.
# ends in 1, the delta should be: "eat beets"
# ends in 4, the delta should be: "squash are great"
# ends in 5, the delta should be: "dogs are better than cats"
# ends in 7, the delta should be: "hello world"
# ends in 2, 3, 6, 8, 9, the delta should be: "___"
echo $0 starting...
# loop dir in range
for d in {1..500}; do
	# set paths
	_cur="hw5dir/sub${d}/hw5file.txt"
	_tmp="hw5dir/sub${d}/.hw5file.txt"
	#echo "current dir: $_cur"
	# set filter replacements
	if   [ $(($d%10)) = 0 ]; then _r="vodki malo"
	elif [ $(($d%10)) = 1 ]; then _r="eat beets"
	elif [ $(($d%10)) = 4 ]; then _r="squash are great"
	elif [ $(($d%10)) = 5 ]; then _r="dogs aint better than cats"
	elif [ $(($d%10)) = 7 ]; then _r="hello world"
	else _r="" 
	fi
	# the freakin awk
	awk -v rpl="$_r" '{ if (4==NR) print rpl 
			    else print $0 }' $_cur > $_tmp
	# clean up
	mv -f $_tmp $_cur
done
echo $0 finished
