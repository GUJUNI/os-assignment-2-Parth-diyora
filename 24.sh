<<com
Name	: Ritik mehta
Roll no	: 22
Class	: MCA-2
Subject : operating systems
Assignment : 1
===================================================================================
Q24 - The script receives any number of filenames as arguments. It should check whether every argument supplied is a file or directory. If it is a directory, it should be reported.
If it is a filename then name of the file as well as the number of lines present in it should be reported.
com
for arg in "$@"; do
    if [ -d "$arg" ]; then
        echo "$arg is a directory"
    elif [ -f "$arg" ]; then
        lines=$(wc -l < "$arg")
        echo "$arg has $lines lines"
    else
        echo "$arg is not a file or directory"
    fi
done
