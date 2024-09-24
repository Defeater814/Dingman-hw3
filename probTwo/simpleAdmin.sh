#!/bin/bash

# Matthew Dingman
# simpleAdmin Script

# This script takes four command line arguments, the first two being directory names, the third being a text file name, and a soft link name. The first directory is made with the first argument, the second directory is made as a child to the first directory and named the second argument. Then a text file is made using the third argument as the name, and "Hello World!" is printed to it. Finally, a soft link named the fourth argument is made that connects the working directory to the directory named after argument two.

# Example invocation : ./simpleAdmin.sh dir1 dir2 message.txt linkName

# Makes a directory using the first command line argument as the name (Part One).
echo -e "Creating a directory named $1 .......... "
mkdir $1
echo "done!"

# Makes a directory inside of the previously made directory named the second command line argument (Part Two).
echo -e "Creating a directory named $2 under $1 .......... "
mkdir $1/$2
echo "done!"

# Creates a text file using the third command line argument and uses redirection to save "Hello World!" to the text file (Part Three).
echo -e "Creating a text file named $3 in directory $1/$2 .......... "
touch $1/$2/$3
echo "done!"
echo -e "Writing 'Hello World!' to $3 .......... "
echo "Hello World!" >> $1/$2/$3
echo "done!"

# Creates a soft link from the working directory to the sub directory created in part two, naming it the fourth command line argument (Part Four).
echo -e "Creating a link from working directory to $2 .......... "
ln -s $1/$2 $4
echo "done!"



