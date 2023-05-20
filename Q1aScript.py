import sys
'''
print(sys.argv[1])
'''
r1 = int(sys.argv[1])
#print(r1)
c1 = int(sys.argv[2])
#print(c1)
r2 = int(sys.argv[3])
#print(r2)
c2 = int(sys.argv[4])
#print(c2)
#filename = sys.argv[5]
#print(filename)
marks = 0
try:
	with open('MatA.txt', 'r') as f:
	    l = [[num for num in line.split()] for line in f]

	#print(l)
	rows = len(l)-1
	#print(rows)  # 👉️ 2
	#if rows = -2 means no matrix then exit program

	cols = len(l[1])
	#print(cols)  # 👉️ 3
	if(rows >= r1 and cols >= c1):

		# print(r1,c1,"Mat A correct")
		marks = marks+1
	# else:
		# print(r1,c1,"Mat A  wrong")

	#print(marks)
except:
	marks = 0
try:
	with open('MatB.txt', 'r') as f:
	    l = [[num for num in line.split()] for line in f]

	#print(l)
	rows = len(l)-1
	#print(rows)  # 👉️ 2

	#if rows = -2 means no matrix then exit program

	cols = len(l[1])
	#print(cols)  # 👉️ 3

	if(rows >= r2 and cols >= c2):
		# print(r2,c2,"Mat B correct")
		marks = marks+1
	# else:
	    # print(r2,c2,"Mat B wrong")

	print(marks)
except Exception as e:
	print("-----------exeptipon---------", e)
	print(marks)	

