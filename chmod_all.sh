#!/bin/bash
# include the above line to have the shell script run by bash. Can put the file location and program

echo -e "\nAuthor: Joe Warga\nDate: 2014-03-19\n"

for s in *py; do chmod +x ${s}; done
