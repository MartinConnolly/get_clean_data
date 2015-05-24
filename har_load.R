# run_analysis.R

library(dplyr)
# Read in the list of features, i.e. the column names from X_test file and
# creates a table with 2 columns. Column V2 is the one with the names of the
# variables
har_load <- function(tree) {
        
        # Check that only test or train directories are passed to this function

        if(!tree %in% c("test", "train")){
                stop("This function only accepts test or train for argument")
        }
        
        # Construct filepath
        
        filePath <- paste("./UCI HAR Dataset/", tree, "/", sep = "")
        subject_test_file <- paste("subject_", tree, ".txt", sep = "")
        y_test <- paste("y_", tree, ".txt", sep = "")
        X_test <- paste("X_", tree, ".txt", sep = "")
        
        # Read in the list of features, i.e. the column names from X_test file
        # and creates a table with 2 columns. Column V2 is the one with the 
        # names of the variables
        
        features <- read.table("./UCI HAR Dataset/features.txt")
        # Read the test data
        
        test_subject <- read.table(paste(filePath, subject_test_file, sep = ""))
        test_activity <- read.table(paste(filePath, y_test, sep = ""))
        test_data <- read.table(paste(filePath, X_test, sep = ""))
        
        # Combine these data frames into one data frame
        
        # First rename columns, otherwise it will attempt to join on all the V1
        # columns
        
        test_activity <- rename(test_activity, activity = V1)
        test_subject <- rename(test_subject, subject = V1)
        
        # get the list of test_features which contain mean or std in title and
        # then subset the relevant columns from test_data and rename the columns
        
        mean_test_features <- features[grep("mean()", features$V2), 2]
        std_test_features <- features[grep("std()", features$V2), 2]
        mean_test_data <- select(test_data, grep("mean()", features$V2))
        std_test_data <- select(test_data, grep("std()", features$V2))
        names(mean_test_data) <- mean_test_features
        names(std_test_data) <- std_test_features
        cut_data <- cbind(test_subject, test_activity, mean_test_data,
                std_test_data)

        # Now set the activity from an integer lookup value to factored levels
        
        #
        #the below isn't working yet, haven't figured out what's wrong
        cut_data$activity[cut_data$activity == 1] <- "WALKING"
        cut_data$activity[cut_data$activity == 2] <- "WALKING_UPSTAIRS"
        cut_data$activity[cut_data$activity == 3] <- "WALKING_DOWNSTAIRS"
        cut_data$activity[cut_data$activity == 4] <- "SITTING"
        cut_data$activity[cut_data$activity == 5] <- "STANDING"
        cut_data$activity[cut_data$activity == 6] <- "LAYING"
        cut_data$activity <- factor(cut_data$activity)

        #levels(cut_data$activity) <- c("WALKING", "WALKING_UPSTAIRS",
                #"WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")




        cut_data
}
