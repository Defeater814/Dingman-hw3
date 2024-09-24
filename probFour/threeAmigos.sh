#!/bin/bash

# Matthew Dingman
# threeAmigos Script

# This script takes four command line arguments, with the first three being summed together. The script "subtractMachine.sh" is run after the sum is calculated with the sum being the first argument and command line four argument going into the second argument for subtractMachine.sh.

#Example Invocation: ./threeAmigos.sh 5 4 6 4

sum=$(($1+$2+$3)) # Calculates the sum of the first three command line arguments.

../probThree/subtractMachine.sh $sum $4 # Runs the script "subtractMachine.sh" with the sum being used as the first argument and the fourth command line argument being used as the second.
