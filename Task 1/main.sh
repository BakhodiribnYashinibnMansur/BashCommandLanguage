#!/bin/bash

#variables
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue

ExitStatus=$?  # status exit code 
FolderName="NewFolder"

 echo -e  " Started Bash Script  $Blue"

 if [ ! -d "$FolderName" ]; then 
  mkdir $FolderName
 fi

 echo -e  " "
 echo -e " Started Created Files  $Blue"
 
for (( i = 1 ; i <=5 ; i++)) 
do
	sleep 1 
	touch $FolderName/newfile${i}.txt
	echo -e "$i - file created  $Green "
done
	
sleep 3 

 if [ $ExitStatus -eq 0 ]
 then 
	 echo -e  " Ok $Green " 
       	echo -e  " Missions Finished $Green "
 elif [ $ExitStatus -eq 1 ]
 then 
	 echo -e  "Minor Problems $Yellow "
 else [ $ExitStatus -eq 2 ]
	 echo -e  "Serious Trouble $Red"
 fi

