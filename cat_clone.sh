#! /usr/bin/bash

echo "Enter the file name whose contents you want to echo to console"
read file_name

# We can use $? to get the exit status of last executed command.
# If 0 -> success, else failed.
# The test -e file_name can be used to see if file actually exists.

test -e ${file_name}

if [ $? -ne 0 ]
then
    echo "Failed, file not found in directory"
else
    # Read file contents into another variable.
    file_contents=`cat ${file_name}`
    for line in $file_contents
    do
        echo -e ${line}
    done
fi
