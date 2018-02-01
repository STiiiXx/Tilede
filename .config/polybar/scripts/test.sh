#!/bin/bash
clear
if [ $# -gt 0 ];
then
    echo $# args: $*
    i=1
    while [ $i -le $# ]
    do
        echo $i
        i=`expr $i + 1`
    done

    case $1 in
        "test") echo "It was a Test²";;
    	*) echo "nothing special";;
    esac
echo
fi
echo "Hello $USER"
echo -e "Please type in your name: \c"; read name
echo Your name is $name.
exit 0
