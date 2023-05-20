#Q1.a	
#putting space around [ and ]  brackets is imp, otherwise it will throw error

if [ -e problem1a.py ] # if file exists
		then
			base="1.25"
			marks=0
			total_marks=0
			# rm MatA.txt
			# rm MatB.txt
			# execute command to run code.
			echo "checking with 3 4 5 6"
			python3 problem1a.py 3 4 5 6
			if [ $? -gt 0 ] ;then
				echo "--------exception generated!!!"
				marks=0
			else
				#testing first two testcases
				echo "testing"
				marks=$(python3 ./../Q1aScript.py 3 4 5 6)
				echo $marks
			fi
			total_marks=$(echo "$marks*$base" | bc) #bc = command line calculator
			#echo $total_marks
			
			#remove previously generated matrix files
			rm MatA.txt
			rm MatB.txt
			
			#run for next testcases
			echo "checking with 7 7 2 2"
			python3 problem1a.py 7 7 2 2
			if [ $? -gt 0 ] ;then
				echo "--------exception generated!!!"
				marks=0
			else
				#testing next two testcases
				echo "testing"
				marks=$(python3 ./../Q1aScript.py 7 7 2 2)
				echo $marks
			fi
			total_marks=$(echo "$marks*$base+$total_marks" | bc) #bc = command line calculator
			Q1a_marks=$total_marks
			
			
		else # solution file doesn't exist. Give 0 marks
				echo "file doen't exist or not named properly or nested directory"
		    	Q1a_marks=0
		       # update marks
		fi