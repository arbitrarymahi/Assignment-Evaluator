#Q1.b	
#putting space around [ and ]  brackets is imp, otherwise it will throw error

if [ -e problem1b.py ] # if file exists
		then
			# execute command to run code.
            # add mul on square matrix
			total_marks=0
			echo "3x3"
            file1="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_3x3A.txt"
            file2="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_3x3B.txt"
            python3 problem1b.py $file1 $file2
			if [ $? -gt 0 ] ;then
				echo "--------exception generated!!!"
				# echo "exit code at 33 $?"
				marksadd=0
				marksmul=0
			else
				#testing first two testcases
				file3="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_3x3C_add.txt"
				echo "testing addition"
				marksadd=$(python3 ./../Q1baddScript.py $file3)
				# echo $marksadd
				file4="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_3x3C_mul.txt"
				echo "testing multiplication"
				marksmul=$(python3 ./../Q1bMultScript.py $file4)
				# echo $marksmul
			fi
			half="0.5"
			total_marks=$(echo "$marksadd*$half+$marksmul*$half" | bc) #bc = command line calculator
			echo $total_marks
			
            # execute command to run code.
            # add mul on 4x5 matrix
			
			echo "4x5"
            file1="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_4x5A.txt"
            file2="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_4x5B.txt"
            # if no error gen then mul marks are given
            python3 problem1b.py $file1 $file2 
			
			if [ $? -gt 0 ] ;then
				echo "--------exception generated!!!"
				# echo "exit code at 33 $?"
				marksmul=0
			else
				marksmul=1
			fi
			
			#testing first two testcases
			file3="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_4x5C_add.txt"
			marksadd=$(python3 ./../Q1baddScript.py $file3)
			
            # echo $marksadd
            # echo $marksmul
			total_marks=$(echo "$total_marks+$marksadd+$marksmul" | bc) #bc = command line calculator
			echo $total_marks
			
            # execute command to run code.
            # add mul on 4x5, 5x2 matrix
			echo "4x5-5x2"
            file1="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_4x5A.txt"
            file2="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_5x2B.txt"
            # if no error means add marks are give
            python3 problem1b.py $file1 $file2
			if [ $? -gt 0 ] ;then
				echo "--------exception generated!!!"
				# echo "exit code at 56 $?"
				marksadd=0
			else
				marksadd=1
			fi
			
            # multiply test
            file4="/home/arb/Desktop/TA_duty/A7/Evaluation/Submissions/Mat_4x2C_mul.txt"
			marksmul=$(python3 ./../Q1bMultScript.py $file4)
			# echo $marksmul
			# echo $marksadd
			
			total_marks=$(echo "$total_marks+$marksadd+$marksmul" | bc) #bc = command line calculator
			echo $total_marks
            Q1b_marks=$(echo "$total_marks" | bc)
			
		else # solution file doesn't exist. Give 0 marks
				echo "file doen't exist or not named properly or nested directory"
		    	Q1b_marks=0
		       # update marks
		fi