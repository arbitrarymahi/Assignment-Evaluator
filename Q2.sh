#Q3	
#putting space around [ and ]  brackets is imp, otherwise it will throw error

if [ -e problem2.py ] # if file exists
		then
			# execute command to run code.
			marks=0
			python3 problem2.py
			if [ $? -gt 0 ] ;then
				marks=0
			else
				#testing first two testcases
				marks=$(python3 ./../Q2Script.py)
				# echo $marks
			fi
			Q2_marks=$marks
			
		else # solution file doesn't exist. Give 0 marks
				echo "file doen't exist or not named properly or nested directory"
		    	Q2_marks=0
		       # update marks
		fi