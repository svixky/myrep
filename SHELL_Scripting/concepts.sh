#! /bin/bash


   Conceptes

### "Numbers and Arithmetic"

n1=6
n2=30

echo $(( n1 + n2 ))  #Add { Syntax of all arithmetic operations,  $(( . . . )) }
echo $(( n1 - n2 ))  #Sub
echo $(( n1 * n2 ))  #Multiple
echo $(( n1 / n2 ))  #Divition 
echo $(( n1 % n2 ))  #Divition with Remainder 


## Another method Syntax:

n1=6
n2=40

echo $(expr $n1 + $n2 )  #Add
echo $(expr $n1 - $n2 )  #Sub
echo $(expr $n1 \* $n2 ) #Multiple
echo $(expr $n1 / $n2 )  #Division
echo $(expr $n1 % $n2 )  #Division with Remainder
----------------------------------------------------------------------------------------------------------------

##### "Arrays"

example syntax: 

#! /bin/bash
car=('BMW' 'Toyota' 'Homda')  #Array tag will starts in 0,1,2,3..

echo "${car[@]}"   ## this will print all of the Array
echo "${car[0]}"  ## it only print BMW 
echo "${!car[@]}"  ## it will show the total index of Array

car[2]='Rover'   ## to set the Array index Value
unset car[2]     ## to omit the paricular index value
----------------------------------------------------------------------------------------------------------------

      Inotify tool:

## it used to monitor the file or directories

sudo apt install inotify-tools   # install the inotify tool

#! /bin/bash

mkdir testdir
inotifywait -m testdir >> /home/ubuntu/log 2>&1    # that it when we run the script then the directory will be start monitored

./monitor.sh &    # & it used to run the script in backgroungd as a 'process', if we want stop kill the process "(ps -ef | grep monitor.sh)"


------------------------------------------------------------------------------------------------------------------------

######## "Function"

#! /bin/bash
function funcName()
{
        echo "this is new function"

}

funcName

      ##### if the Program file will contain 10000 number of line code ,but in that 50 lines need to use in multiple time that case we use 'Function' paste 50 lines in function and we use
	

#creating variables inside the "Function":

function funcName()
{
	returnvalue="using variables inside the Function"     #local Variable
        echo "$returnvalue"

}

funcName
-------------------------------------------------------------------------------------------------------------------------------------------------

### Using "Curl" in Shell Script:

#! /bin/bash

url="https://filesampleshub.com/download/code/html/sample1.html"
curl ${url} -O           
       #-O will download the file with its orginal name 

curl ${url} -o myhtml  # -o small  will download the file with given name
curl ${url} > myhtml   # another method of -o 

--------------------------------------------------------------------------------------------------------------------------------------

#### "Select loop"

#! /bin/bash

select car in BMW Mercedese Tesla  Rover Toyota
do
	echo "you have selected $car"
done

        ### in this we can simply select the number to show the car names

# "select loop" in multiple if condition using "case"

#! /bin/bash
select car in BMW Mercedese Tesla  Rover Toyota
do
	case $car in
	BMW)
		echo "you have selected BMW";;
	Mercedese)
		echo "you have selected Mercedese";;
	Tesla)
		echo "you have selected Tesla";;
	Rover)
		echo "you have selected Rover";;
	Toyota)
		echo "you have selected Toyota";;
	*)
		echo "ERROR! please select between 1..5"
	esac
done

            ### using case we can add the error msg when selecting the particular range

    # wait for the input any key 

#! /bin/bash


echo "press any key to continue"

while [ true ]
do
        read -t 8 -n 1      # -t refer 'seconds' -n 1 refers single charector of input
if [ $? = 0 ]            # $? it is used to check the last command is successful or not, if 0 means success non 0 means failure
then
        echo " thanks for press the key"
        exit;
else
        echo "waiting for you to press the key"
fi
done
---------------------------------------------------------------------------------------------------------------

# "GREP" using in script

#! /bin/bash 

read -p "Enter the file to search the text: " File

if [[ -f $File ]];
then
	read -p "Enter the text to search in the file: " Search_text
	grep -i $Search_text $File  # -i used to grep the word even it is a Caps or samall letter 
else
	echo " $File file does not exist"
fi

      grep -n $Search_text $File     # -n it will grep the text with the line number
      grep -c $Search_text $File     # -c it will count the number time it present 
      grep -v $Search_text $File     # -v it used to leave that paricular grep text and other will be show
      grep -r 'text' /path/to/directory  # -r used to search that text in all files which inside that directory
    
------------------------------------------------------------------------------------------------------------------------------











