#!bin/bash

#Find any incorrect passwords from LogA file into the access_denied file
#Print the  who attempted to  login with which passwords

sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt
awk '{print $4, $6}' access_denied.txt > filtered_logs.txt

