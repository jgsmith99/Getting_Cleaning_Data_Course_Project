# Getting and Cleaning Data
# Week 4, Peer-graded Assignment, Course Project
# run_analysis.R

# Download the data using the downloader library and unzip.
library(downloader)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download(fileUrl, dest="./data/dataset.zip", mode="wb")
unzip("./data/dataset.zip")

# Read in activity labels data and give the columns appropriate names
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_code","activity")

# Read in features data and give the columns appropriate names
features <- read.table("./data/UCI HAR Dataset/features.txt")
names(features) <- c("feature_code", "feature_title")

# Read in the test data and give the columns appropriate names
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
names(subject_test) <- "subject"
names(X_test) <- features$feature_title
names(y_test) <- "activity_code"

# Read in the train data and give the columns appropriate names
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
names(subject_train) <- "subject"
names(X_train) <- features$feature_title
names(y_train) <- "activity_code"

# Combine test and train data to one data set. First combine the test data, then
# combine the train data, then combine them both together.
test_all <- cbind(subject_test, y_test, X_test)
train_all <- cbind(subject_train, y_train, X_train)
data_all <- rbind(test_all, train_all)

# Get the column numbers of data_all that contain mean or std
extract1 <- grep("mean|std",names(data_all))

# Add in columns 1 & 2 (subject & activity code)
extract1 <- c(1, 2, extract1)

# Extract only measurements on mean and standard deviation
sub_data_all <- data_all[extract1]

# Merge sub_data_all with activity_labels to get descriptive activity names
sub_data_all_merge <- merge(activity_labels, sub_data_all)

# Remove () from the variable names
names(sub_data_all_merge) <- gsub("\\(\\)","",names(sub_data_all_merge))

# Average the data above by subject & activity
library(dplyr)
avg_data = sub_data_all_merge %>% 
        group_by(subject, activity) %>% 
        summarize_all(funs(mean))

