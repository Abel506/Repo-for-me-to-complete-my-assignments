#!/bin/bash

echo -n "Print agreed?"

valid=0

while 
[ $valid == 0 ]
do
	read ans
	case $ans in
	ok|OK|OKAY|okay ) echo Will print agreed
			  echo They Agreed
			  valid=1
			  ;;
	[kK][nN]	) echo Will NOT Print agreed
			  valid=1 ;;
	*		) echo Ok Or K of some form please ;; 
	esac
done 
