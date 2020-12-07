#!/bin/bash
# cd /mnt/c/projects/GitHub/chapman/hw5
# ends in 0, the delta should be: a phrase of your choosing.
# ends in 1, the delta should be: "eat beets"
# ends in 4, the delta should be: "squash are great"
# ends in 5, the delta should be: "dogs are better than cats"
# ends in 7, the delta should be: "hello world"
# ends in 2, 3, 6, 8, 9, the delta should be: "___"
echo 5.2 starting...
# get the directories
ls -l hw5dir | awk '{print $9}' > _dirs
awk '/0$/ {print "hw5dir/" $1 "/hw5file.txt"}' _dirs > _0
awk '/1$/ {print "hw5dir/" $1 "/hw5file.txt"}' _dirs > _1
awk '/4$/ {print "hw5dir/" $1 "/hw5file.txt"}' _dirs > _4
awk '/5$/ {print "hw5dir/" $1 "/hw5file.txt"}' _dirs > _5
awk '/7$/ {print "hw5dir/" $1 "/hw5file.txt"}' _dirs > _7
awk '/2$/ || /3$/ || /6$/ || /8$/ || /9$/ {print "hw5dir/" $1 "/hw5file.txt"}' _dirs > _blanks
#cat _0 | awk '{print "cat " $1 " | awk 'FNR == 4'"}' 
cat _0 | awk '{print "cat " $1 " | awk `NR==4`" }' 
# clean up temp files
# rm _0 _1 _4 _5 _7 _blanks _dirs
echo 5.2 finished
