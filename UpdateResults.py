# Import writer class from csv module
from csv import writer
import sys

# List that we want to add as a new row
List = [sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]]

# Open our existing CSV file in append mode
# Create a file object for this file
with open('results.csv', 'a') as f_object:

	# Pass this file object to csv.writer()
	# and get a writer object
	writer_object = writer(f_object)

	# Pass the list as an argument into
	# the writerow()
	writer_object.writerow(List)

	# Close the file object
	f_object.close()

