# run_analysis.R

library(dplyr)
library(reshape2)

# source the har_load function, which reads in all the required data
source("har_load.R")

# use the har_load function to load up the test and training data

test_data <- har_load("test")
train_data <- har_load("train")

all_data <- rbind(test_data, train_data)

# melt the data

melt_data <- melt(all_data, id = c("subject", "activity"),
 	measures = names(all_data)[3:81])

# recast the data in the required format

tidy_data <- dcast(melt_data, subject + activity ~ variable, mean)
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE)
