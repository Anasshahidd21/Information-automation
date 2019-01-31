#!/bin/bash

clear

cd $HOME




if [ -d $1 ];then
	echo "Directory already there"
else
	 mkdir "$1"
fi

cd "./$1"

if [ -f extractor.log ]; then
	echo "Extractor exists"
else
	echo "Creating a new extractor file"
	touch extractor.log
fi

if [ -f Information ]; then
	echo "File Already Exists"
	echo "Information file already exists" > extractor.log
else
	echo " Creating information file"
	touch Information
	echo "Information file is created"  > extractor.log

fi

chmod 640 Information


echo "Access right changed for Information file." >> extractor.log

who | cut -d " " -f1 | grep [abcd]  > Information

echo "List of user names has been added to the Information file. " >> extractor.log
total_number="$(who | cut -d " " -f1 | grep [abcd] | wc -w)"

echo "The number of found users is: $total_number" >> extractor.log

echo "Execution of InformationExtractor script has ended successfully!"


    
