#! /bin/bash


##### 'while loop, with example syntax { it will run until the condition was  true }[ 'while' - given condition iruka varikum it will run ]
          'while loop is used a specific condition is true, till it will loop'

number=1
  # Start the while loop
while [ "$number" -le 10 ]; do
	
	echo "$number"         # Print the current number
	number=$(( number+1 ))  # Increment the variable
done

#### 'until loop' with example syntax 
         ('Both the "while and until loop" basicaly same) {it will run the condition until it become true} [ 'until' - given condition vara varikum it will run]'

number=1
until [ $number -ge 10 ]; do

	echo $number
	number=$(( number+1 )) 
done


##### 'for loop' with if condition, using divisible
        'for loop is used to intract with lists or set of range ( list of files,elements or range of number )'

for i in {1..100}; do
if [[ $((i % 3)) -eq 0 ]] || [[ $((i % 5)) -eq 0 ]] && [[ $((i % 15)) -ne 0 ]];
then
        echo $i
fi;
done

##### 'break statement'   example syntax
       'it will break the loop when the given  condition is met'

for i in {1..30}
do
        if [ $i -gt 15 ]; then
                break
        fi
        echo $i
done

##### 'continue statement' example
         'continue statement in shell scripting is used to skip the current iteration of a loop and move on to the next iteration without exiting the loop' (it not print 15) 

for i in {1..30}
do
        if [ $i -eq 15 ]; then
                continue
        fi
        echo $i
done


--------------------------------------------

