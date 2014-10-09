#!/bin/bash
# include the above line to have the shell script run by bash.

# how to use:
# command line:
# ./sync_dir.sh directory1 directory2

echo
echo Shell script
echo Author: Joe Warga #backslash indicates that the line is not over and command continues on the next line
echo Date Writen: 2014-03-14
echo
echo sync ${1}
echo with ${2}


: <<COMMENT
to run, type the following in bash
./{file.sh}

to make the script executable
chmod +x {file.sh}
COMMENT

# cp file1 file2 # copies file1 to file2 and overwrites file2
cp -r -u $1/* $2 # Synchronizes, recursively, the second parameter to first parameter, which should be folders
cp -r -u $2/* $1 # and back
echo
