import sys
import os
'''
print(sys.argv[1])
'''
marks = 0
try:
	# print("evaluating mult\n")
	# open user output matrix
	with open('multOp.txt', 'r') as f:
		m1 = [[num for num in line.split()] for line in f]
		# print(m1)
	#open answer matrix
	with open(sys.argv[1], 'r') as f:
	    m2 = [[num for num in line.split()] for line in f]
	# print("mul\nuser file\n")
	# print(m1)
	# print("correct file\n")
	# print(m2)
	# remove previous user generated file before next test
	os.remove("multOp.txt")
	# print("j")
	if(m1 == m2):
	    marks = marks+1
	    print(marks)
	else:
	    marks = 0
	    print(marks)
	
except:
	marks = 0
	print(marks)

