Getting_Cleaning_Data_Proeject	10/25/2014 By: Michael Carmona
==============================

Final Project for Coursera Class "Getting and Cleaning Data"

First, sorry by the typo at the project title.

The intend of this script is execute the guidelines stablish at the coursera project for 
cleaning and getting data summary as follow:

###################################################################################################
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
####################################################################################################

The script to run this cases is "run_analysis.R"
The Output file: "Step5.txt"

The script runs in 5 steps:

1.#Reading Data
2.#Manipulating Data
3.#Name rows
4.#Name Columns
5.#Sort Data and getting averages

Brief Description:

1. Assign the data to differents tables
2. Takes the Train and test data and merge them together. Also make the selection by picking only average and standart deviation data
3-4. Create a tiddy file, assigning names to each activity and Variables names to each column.
5. Write down a txt file, named "Step5.txt" with all data as required (by average of each activity for each subject)

TO see more about the source data look into: README from UCI HAR DAtaset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
TO know more about the variables and the script in detail see: CodeBook.md (https://github.com/mcarmona8/Getting_Cleaning_Data_Proeject)
