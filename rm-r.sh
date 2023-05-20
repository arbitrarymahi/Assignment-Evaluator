#!/bin/bash

# list all things.
# if file is a directory cd into it
# run on all files inside it some command
#cd .. out of it
#goto line 4


cwd=`ls`

for file in ${cwd[@]}
do

	if [ -d $file ]
	then
		cd $file # inside student submission
		
		# extract rollnum
		rollnum=${file:0:6} 
		echo $rollnum
		# remove stdent output files 
		if [ -e problem2Op.txt ]
		then
			rm problem2Op.txt
		fi
		if [ -e multOp.txt ]
		then
			rm multOp.txt
		fi
		if [ -e addOp.txt ]
		then
			rm addOp.txt
		fi
		if [ -e MatA.txt ]
		then
			sudo rm MatA.txt
		fi
		if [ -e MatB.txt ]
		then
			sudo rm MatB.txt
		fi
		cd ..
	#scope of var in bash script is global by default
	#echo $Q1_marks
	#update results file
	# python3 UpdateResults.py $rollnum $Q1a_marks $Q1b_marks $Q2_marks $Q3_marks $Q4_marks
	fi
	
done

