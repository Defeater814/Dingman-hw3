#!/bin/bash

# Matthew Dingman
# mySetup Script

# This script will complete Problem One steps a through e. This includes setting the CPU frequency, displaying CPU info, creating and displaying a location variable, and making an items variable 
# that displays the number of items in the working directory. This scripts takes no command line arguments.

# Example invocation: ./mySetup.sh

# Sets the CPU Freqency to 600MHz (Part A).
sudo cpufreq-set -f 600MHz

# Displays information about the CPU (Part B).
echo
echo "Information about the CPU:"
echo $(cpufreq-info)
echo
# Creates the variable "location" and defines it with the home directory (Part C).
location=$HOME

# Echos the value of the "location" variable (Part D).
echo "This is the location:"
echo $location
echo

# Makes the variable "items" and uses it to display the number of items in the working directory.
items=$(ls | wc -w)
echo "There are $items items in the working directory"

