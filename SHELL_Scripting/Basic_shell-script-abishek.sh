#!/bin/bash



### provide a meta Data to identify the purpose of script
######################

# Author:  vigneshwaran
# Date: 4//6/2024
#
# this script output the node health
#
# Version: V1
########################


### Using echo we can identify what the command does

### Anothe way to idendify what the command does (debug mode) use: set -x

set -x  ## debug mode (it shows the command and the output in step by step of script)

set -e     ## exit the script when there is an error  (it not find pipe cmd error)

set -o pipefail   ## it will exit the script if any error in pipe cmd.

#echo "Print the disk space"
df -Th

#echo "print the memory"
free

#echo "print the cpu"
nproc




##if eles condition for shell scripting


a=4     #(variables)
b=10    #(variables)

if [ $a > $b ]     ### if the condition is met a greater than b  then show echo .....
then 
   echo "a is greater then b" 
else                              ###(else) if the condition is not met ,show b is greater than a.   
   echo "b is greater than a" 
fi 

###  divisible by 3 and 5 not divisible by 15 ( with if and for loop condition)
for i in {1..100}; do
if ([ `expr $i % 3` = 0 ] || [ `expr $i % 5` = 0 ]) && [ `expr $i % 15` != 0 ];
then
        echo $i
fi;
done

example syntax:
if [ $((i % 3)) -eq 0 ] || [ $((i % 5)) -eq 0 ] && [ $((i % 15)) -ne 0 ];

if [[ $((i % 3)) -eq 0 ]] || [[ $((i % 5)) -eq 0 ]] && [[ $((i % 15)) -ne 0 ]]; 
##   $(( ... ))  This is used for arithmetic expansion

