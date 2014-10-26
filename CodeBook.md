COdeBook
by: Michael Carmona
Coursera Class: Getting and Cleaning Data
Date: 10/26/2014

The following Codebook explains the variables contain within the script: "run_analysis.R"

#Reading Data

feat<-Reads and stores the "feature.txt" file
x_t<-Reads and stores the "X_train.txt"
y_t<-Reads and stores the "y_train.txt"
x_tst<-Reads and stores the "X_test.txt"
y_tst<-Reads and stores the "y_test.txt"
act_label<-Reads and stores the "activity_labels.txt"
s_test<-Reads and stores the "subject_test.txt")
s_train<-Reads and stores the "subject_train.txt")
sub_tot<-Stores the unique number of subjects


#Manipulating Data

dat_train<-stores all data from train files, and add the subject and activity
dat_test<-stores all data from test files, and add the subject and activity
mdat<-merge data from train and test
V2<-covert to lower case the variables names store in feat column V2
dullc<-creates a dull vector with three spaces to store the subject,activity and type
V2<-creates a vector with Subject, Activity, Type and variables from V2
V1<-creates a vector with 3 spaces (1,2,3) and the variables headings from featcolumn V1
names<-creates a data frame with V1 and V2
mean_vec<-Extract the variables who conatain "mean" from names and stores the location vector
std_vec<-Extract the variables who conatain "std from names and stores the location vector
comb_vec<-Combine both vectors and arrange them in ascending order

mdat<-from the principal data set mdat, extracts the required values based on the  location vector comb_vec
the new data set contains just the require data for this project

#Name rows
actv_v<-Extract activity numbers from mdat
actv_v$type<-creates a type column with the activity numbers from previous step
levels(actv_v$type)<-from previous column, change the activity number for the corresponding activity name

mdat<-takes the main data set, and subsitute the activity column by the new activity names

#Name Columns
col_names<-store all names in mdat
col_n<-creates a vector with the three columns names
for loop:
Start from 4th column to the total names length, stores the character variable extract from feat and assign it to val1
col_n<- creates a vector with the three names columns from col_n and add the variable name


colnames(mdat)<-substituthe all the columns names in mdat to the specific variable name


#Sort Data and getting averages
e<-represents the total number of subjects
i<-represents the total number of columns in mdat

for loops:

by_s<-extract data for each column
mbs<-group data by each activity
mbs<-pick just the data for each subject (e)
res<-stores the average for each activity for each subject
if(i==4){
temp<-Stores average value
final<-creates a data frame with the average for each activity for each variable

Avg_Summ<-Stores all data for each subject

col_n<-add a vector for activity and subject column
for loop:
Same as in #names columns routine

#writing down files

Writes the Step5.txt file with the tidy data.

End Of line.......................................................................

