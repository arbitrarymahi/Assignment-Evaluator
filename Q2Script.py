import sys
marks = 0
try:
	with open('problem2Op.txt', 'r') as f:
	    l = [line for line in f]

	# print(l)
	rows = len(l)
	# print(rows)  # 👉️ 2

	
	if(rows == 2):
		marks = 6
	elif(rows>=3):
	   # print(r2,c2,"correct")
	    marks = 10
	# else:
	#     print(r2,c2,"wrong")

	print(marks)
except:
	print(marks)	

