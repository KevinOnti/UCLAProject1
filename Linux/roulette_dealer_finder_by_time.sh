#!/bin/bash
echo "Who was working this day?"
echo "Enter a date in MMDD format"
read ip_var1
echo "Enter in the hours in HH format"
read ip_var2
echo "Enter in either AM or PM"
read ip_var3
echo "This employee was working this day at this time."
find ~/ -type f -iname $ip_var1'_Dealer_schedule' -exec awk -F'	' '{print $1,$3}' {} \; | grep -i $ip_var2 | grep -i $ip_var3


