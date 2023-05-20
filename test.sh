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
		# next execute eval script for each submission
		#Q1.a
		#run from other script(works like inline fn in cpp)
		echo "Q1a"
		source /home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Q1a.sh
		
		#Q1.b
		echo "Q1b"
		source /home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Q1b.sh
		
		# echo $Q1_marks
		# Q2 
		echo "Q2"
		source /home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Q2.sh
		# echo $Q2_marks
		# Q3
		# Q1a_marks=1000
		
		#Q4
		# Q1b_marks=0
		# Q2_marks=1000
		cd ..
	#scope of var in bash script is global by default
	#echo $Q1_marks
	#update results file
	python3 UpdateResults.py $rollnum $Q1a_marks $Q1b_marks $Q2_marks
	printf "\n=======================x===========x=========================\n"
	fi
done

