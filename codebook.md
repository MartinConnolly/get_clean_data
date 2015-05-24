Title: Getting and Cleaning Data Codebook

Author: Martin connolly

Date: 2015-05-20

# get_clean_data codebook
Getting and Cleaning Data Course Project

## Raw data
The orginal raw data was from a study[1] The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

We worked with a subset of this data which can be found here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Tidy Data

|Variable|Description|Class|Values|
|--------|-----------|-----|------|
|subject|An id for each subject|integer|1 to 30|
|activity|What was the subject doing|factor|"LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"|
|tBodyAcc-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAcc-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAcc-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tGravityAcc-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||       
|tGravityAcc-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||   
|tGravityAcc-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||          
|tBodyAccJerk-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||        
|tBodyAccJerk-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric|| 
|tBodyAccJerk-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric|| 
|tBodyGyro-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric|| 
|tBodyGyro-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyro-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerk-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerk-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerk-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|tGravityAccMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccJerkMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerkMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-meanFreq()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-meanFreq()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-meanFreq()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-meanFreq()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-meanFreq()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-meanFreq()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-mean()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-mean()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-mean()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-meanFreq()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-meanFreq()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-meanFreq()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccMag-meanFreq()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyAccJerkMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyAccJerkMag-meanFreq()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyGyroMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyGyroMag-meanFreq()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyGyroJerkMag-mean()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyGyroJerkMag-meanFreq()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAcc-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAcc-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAcc-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tGravityAcc-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tGravityAcc-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tGravityAcc-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccJerk-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccJerk-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccJerk-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyro-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyro-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyro-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerk-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerk-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerk-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|tGravityAccMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyAccJerkMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|tBodyGyroJerkMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAcc-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccJerk-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-std()-X|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-std()-Y|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyGyro-std()-Z|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyAccMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyAccJerkMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyGyroMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||
|fBodyBodyGyroJerkMag-std()|the mean of this value for each unique comibination of subject and activity|numeric||










##References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012