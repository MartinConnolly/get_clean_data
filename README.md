
Title: Getting and Cleaning Data Course Project

Author: Martin connolly

Date: 2015-05-20

# get_clean_data
Getting and Cleaning Data Course Project

## Objectives

Create one R script called run_analysis.R that does the following. 

- [X] Merges the training and the test sets to create one data set.
> This uses the har_load function to load each data set

- [X] Extracts only the measurements on the mean and standard deviation for each measurement. 
> Again this is done by the har_load() function

- [X] Uses descriptive activity names to name the activities in the data set
> Again this is done by the har_load() function

- [X] Appropriately labels the data set with descriptive variable names. 
> Again this uses the har_load() function

- [X] From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
> This uses melt and dcast

