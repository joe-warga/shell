#!/bin/bash
# include the above line to have the shell script run by bash. Can put the file location and program

echo
echo Shell script
echo Author: Joe Warga #backslash indicates that the line is not over and command continues on the next line \
echo Date: 2014-03-17
echo
echo now number of arguments passed:
echo $# #this will show the number of arguments
echo
echo arguments are:
echo $@ #this will list the arguments

if [ -z "$1" ]
then
	echo you aint got no arguemnt
else
	echo arguments are:
	echo $@
fi

: <<PreVar
in terminal:
pass='word' ./arg.sh
or
pass=123 ./arg.sh
PreVar

: <<COMMENT
Can put multiline comments in this area
This script is to test out shell scripting

to run, type the following in bash
./{file.sh}

to make the script executable
chmod +x {file.sh}

#!/{location}/{program with which to execute script, this case bash is terminal}

A series of independent commands can be grouped together as a single command by separating them by semicolons ";". end

Pipes "|" also cause the execution of multiple processes from a single command line. With a pipe, the standard output of the process before the pipe is redirected to the standard input of the process after the pipe.

Any commands enclosed within parentheses are run in a separate shell, similar to the "direct" or "csh" execution of a shell script. As you can see, technically, this is not a means of running a shell script at all, but it is similar.

Quick reference for usful commands (--h for more info)
sleep 3 # sleeps for number of seconds
ls # list directory
grep # searches for strings in whatever
ls | grep word # searches for word in the output of ls
arch # print machine architecture
bzip2 sh.exe -k # compresses file sh.exe and (-k) keeps the original file
tar # compressor with many functions
head # prints the header of a file
echo # print out stuff
$USER # is the signed in user

$0 is the name of the command
$1 first parameter
$2 second parameter
$3 third parameter etc. etc
$# total number of parameters
$@ all the parameters will be listed

COMMENT

echo
