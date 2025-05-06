#! /bin/bashi


####    example of 'if' conditions and with different type of syntax

count=10

if [ $count -eq 9 ]; then       # -eq equal to
	echo "the condition is true"
else
	echo "the condition is false"
fi

example syntax:
if [ $count -ne 9 ]   # -ne not equal to
if [ $count -gt 9 ]   # -gt greater than
if [ $count -lt 9 ]   # -lt lesser than 
read -p               # read used to enter name or value when the script is running
echo $1 $2 $3        # ./test.sh car bike bus ($1 $2 $3) it used as input value like a 'read' command 

if [ -z "$name" ]     # -z used to check the string is zero

	
if (( $count > 9 ))   # greater than 9 
if (( $count < 9 ))   # smaller than 9
if [ $count == 0 ]    # equal to 
if [ $count != 0 ]    # not eqal to 
%     #it used to divisible a values in remainder 
if [ $((num % divisor)) -eq 0 ]      $(( ... )) # This syntax is used for arithmetic expansioin. (loops)

read -t 5 -n 1   # -t refer 'seconds' -n 1 refers single charector of input 
if [ $? -eq 0 ]   # $? it is used to check the last command is successful or not 
if [ $? -ne 0 ]   # if the equal to 0 means success status and not equal to 0 means failure status


##### with 'if else and if' statement with other syntax, example 
 
count=10

if (( $count < 9 )); then       
        echo "first condition is true"

elif (( $count > 9 )); then
	echo "second condition is true"

else
        echo "the condition is false"
fi

####using '&&'(and) condition  { in && condition both must want to be same in 'if' othewise it show the 'else' echo}

age=12

if [ "$age" -gt 10 ] && [ "$age" -lt 40 ]; then 
        echo "age is correct"
else
	echo "age is not correct"  
fi

example syntax
if [[ "$age" -gt 10  &&  "$age" -lt 40 ]]
if [ "$age" -gt 10  -a  "$age" -lt 40 ]

###### using 'or' conditions { in 'or' condition this or that want any one is true}

age=30

if [ "$age" -gt 60  -o  "$age" -lt 40 ]; then
        echo "age is correct"
else
        echo "age is not correct"
fi

example syntax
if [[ "$age" -gt 60  ||  "$age" -lt 40 ]]
if [ "$age" -gt 60 ] || [ "$age" -lt 40 ]




###example if condition use case in realtiem to check the file existing (same as Directory)

if [ -f /home/ubuntu/dev  ]
then
	echo the file is  exist
else
	echo creating the file 
	{ cp -r /home/ubuntu/file dev; cat dev; }
fi

-f   # used to check the file is exist or not 
-d   # used to check the Directory which exist or not

######## using "read and -z" use case example

echo "Enter your name:"
read  -p "write your name:" name

if [ -z "$name" ]; then
  echo "No name provided."
else
  echo "Hello, $name!"
fi

   --- using "read" we can enter the 'any name or value' when the script is running, it ask to enter
   --- 'read -p' it will print the given line in the read module
       -z used to check the string is zero 


######## with "Read and divisible" use case example

read -p "Enter a number: " num
read -p "Enter a divisor: " divisor

if [ $((num % divisor)) -eq 0 ]; then
    echo "$num is divisible by $divisor"
else
    echo "$num is not divisible by $divisor"
fi

  ----  $(( ... ))  This is used for arithmetic expansion.







