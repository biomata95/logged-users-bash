#!/bin/bash

verify_user=$1

NOWDATE=$(date +"%Y-%m-%d")
NOWTIME=$(date +"%T")
USERS=$(who | cut -d " " -f1)
TERMINAL=0
LOGIN=0

flag=false
count_users=0
for u in $USERS
do
	echo "NAME:" $u "DATA: $NOWDATE"" ""HORA: $NOWTIME"
	if [ "$u" = "$verify_user" ]
	then
    	flag=true
    fi
    count_users=$((count_users+1))
done

echo "users="$count_users

if [ "$flag" = true ]
then
	echo "User "$verify_user" is logged."
else
	echo "User "$verify_user " is not logged."
fi
