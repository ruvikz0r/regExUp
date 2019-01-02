#!/bin/bash

VAR1=$(cut -d: -f1 /etc/passwd)
echo -e “The users in the system as fallows..n $VAR1 n Completed listing users..!”
echo “Total number of users are $(cat /etc/passwd | wc -l)”

if getent passwd $1 > /dev/null 2>&1; then
    echo "yes the user exists"
else
    echo "No, the user does not exist"
fi
