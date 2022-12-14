# run change mode command, plus executable and the name of your script
# chmod +x myscript.sh so you can run the file

# to run the file: ./myscript.sh

# to find where bash is installed on system: which bash

# sh-bang (sharp bang)

#! /bin/bash

# ECHO COMMAND
# echo Hello World!

# VARIABLES
# Variables are Uppercase by convention
# What's allowed: letters, numbers, underscores
# NAME="James"
# echo "My name is $NAME"
# or 
# echo "My name is ${NAME}"

# USER INPUT
# read -p "Enter your name: " YOURNAME
# echo "Hello $YOURNAME, nice to meet you"

# CONDITIONALS

# A SIMPLE IF STATEMENT - to end an if statement, you type a backwards if "fi"
# if [ "$NAME" == "Justin" ]
# then
#   echo "Your name is Justin"
# fi

# IF-ELSE
# if [ "$NAME" == "Justin" ]
# then
#   echo "Your name is Justin"
# else
#   echo "Your name is NOT Justin"
# fi

# ELSE-IF (aka elif)
# if [ "$NAME" == "Justin" ]
# then
#   echo "Your name is Justin"
# elif [ "$NAME" == "Bill" ]
# then
#   echo "Your name is Bill"
# else
#   echo "Your name is NOT Justin or Bill"
# fi

# COMPARISONS
########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########
# NUM1=31
# NUM2=5
# if [ "$NUM1" -gt "$NUM2" ]
# then
#   echo "$NUM1 is greater than $NUM2"
# else
#   echo "$NUM1 is less than $NUM2"
# fi

# FILE CONDITIONS
########
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u  True if the user id is set on a a file
# -w  True if the file is writable
# -x  True if the file is an executable
########
# FILE="test.txt"
# if [ -e "$FILE" ]
# then
#   echo "$FILE exists"
# else
#   echo "$FILE does not exist"
# fi

# CASE STATEMENTS - like Switch Statements
# prompt user - their answer is stored in a variable ANSWER
# lowercase y or uppercase Y or any combination of yes (Yes, yEs, yeS, etc..) followed by a required closing parenthesis
# echo out whatever
# close out the case with a double semicolon
# the no statement structure mirrors the above
# all followed by an asterisk and closing parenthesis
# lastly, the default (similar to the JS switch)
# close it ou with case backwards (esac)
# read -p "Are you 21 or over? Y/N " ANSWER
# case "$ANSWER" in
# [yY] | [yY][eE][sS])
#   echo "You can have a beer :)"
#   ;;
# [nN] | [nN][oO])
#   echo "Sorry, no drinking :("
#   ;;
#   *)
#   echo "Please enter y/yes or n/no"
#   ;;
#   esac

# SIMPLE 'FOR' LOOP
# NAME defines the variable and $NAMES calls the variable
# NAMES="Justin Brittany Jupiter"
# for NAME in $NAMES
#   do 
#     echo "Hello ${NAME}"
#   done

# FOR LOOP TO RENAME FILES
# list all of the text files. * stands for all
# create a variable 'NEW' and set the new name to "new"
# to execute the rename, use the 'mv' command
# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#   do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ THROUGH A FILE LINE BY LINE
# create a variable to stand as an iterator
# ++ to increment
# LINE=1
# while read -r CURRENT_LINE
#   do
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done <"./new-1.txt"

# FUNCTION
# NAME="Justin"
# function sayHello(){
#   echo "Hello $NAME"
# }
# sayHello

# FUNCTION WITH PARAMS
# use positional parameters
# function greet(){
#   echo "Hello, I am $1 and I am $2 years old"
# }

# greet "Justin" "35"

# #CREATE FOLDER AND WRITE TO A FILE
# use >> to write to the file and then declare the file to write to
# mkdir hello
# touch "hello/world.txt"
# echo "Hello World" >> "hello/world.txt"
# echo "Create hello/world.txt"