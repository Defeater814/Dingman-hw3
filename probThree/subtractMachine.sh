#!/bin/bash

# Matthew Dingman
# subtractMachine Script

# This script takes two command line arguments and compares them to see which one is bigger. It then echos which one is larger and the difference of the two arguments. The difference is also saved to a variable and used in a separate while statement to produce a countdown from the difference to 1.

# Example Invocation: ./subtractMachine.sh 10 3

if [ $1 -gt $2 ] # If command line argument 1 is larger than command line argument 2, print that to stdout, find the difference, and print that to stdout.

then
	echo
	echo "$1 is larger than $2."
	difference=$(($1-$2))
	echo "The difference is $difference."
	echo 

elif [ $1 -lt $2 ] # Else if command line argument 1 is less than command line argument 2, print that to stdout, find the difference, and print that to stdout.

then
	echo
	echo "$2 is larger than $1."
	difference=$(($2-$1))
	echo "The difference is $difference."
	echo

else # If the command line arguments are equal, print that they cannot be equal and end the script.
	echo
	echo "Cannot be equal."
	echo
	exit
fi

while [ $difference -ne 0 ] # While the value of difference is not equal to 0, print a countdown of the difference variable until it reaches 1.
do
	echo "Count Down = $difference"
	difference=$(($difference-1))
done
echo

