/********************
   Author: Mahendra Aanjna 
   
************************************/

How to use the evaluator=>

tldr:
extract all submission zips in current directory
run chmod +x test.sh
run chmod +x rm-r.sh
./rm-r.sh  (optional but recommended) # removes user answer files. that were zipped
script output.txt (optional) # log of evaluator, output.txt will contain everything
./test.sh # runs the evaluator results.csv is generated


explaination::::

IMP:: make sure you check paths of files when running. I have used my system pats. you might want to change them

The evaluator starting point is test.sh file. Make sure to give execution permission using chmod +x test.sh
then run './test.sh' or 'bash test.sh' whichever you prefer

extract all the zip files in this folder for evaluating

then run the rm-r.sh script to remove all output files that students compressed with submission. you can edit this file to add all the names of files you want to remove

The flow of evaluator is following:
test.sh file iterates over the folders in current /submissions/ folder.
in each folder if it finds python files with proper naming then it will execute the evaluator else give 0 marks.

for each question there is a separate evaluator, which executes user submitted python files first by passing proper parameters.
then tests them using python eval scripts. The eval scripts open user generated txt files and compares them with expected output and grades accordingly.

If you write your own file make sure you only print marks and nothing else otherwise evaluator will generate error. This is because shell and python are two different processes and when shell calls python the simple mechenism to pass data from python to shell is just print.(in our case we print only marks.) if you print other things then complex mechenism such as IPC or ports will need to open to forward the data. which is complex, so print only marks nothing else.

proper comments are provided at each point for user to understand what each line does. 

If you want to capture log of evaluator. that can be done using script command.
run 'script output.txt' before running the evaluator.

lastly the evaluator will generate csv file with student marks. this can be modified based on no of questions.


