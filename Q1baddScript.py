import sys
import os
'''
print(sys.argv[1])
'''
marks = 0
try:
	# print("evaluating mult\n")
	# open user output matrix
	with open('addOp.txt', 'r') as f:
		m1 = [[num for num in line.split()] for line in f]
		# print(m1)
	#open answer matrix
	with open(sys.argv[1], 'r') as f:
	    m2 = [[num for num in line.split()] for line in f]
	# print("add")
	# print(m1)
	# print(m2)
	# remove previous user generated file before next test
	os.remove("addOp.txt")
	if(m1 == m2):
	    marks = marks+1
	    print(marks)
	else:
	    marks = 0
	    print(marks)
	
except:
	marks = 0
	print(marks)

