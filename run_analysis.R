
# Source of data for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# This R script does the following:

# 1.  Merges the training and the test sets to create one data set.
# 2.  Extracts only the measurements on the mean and standard deviation for each measurement.
# 3.  Uses descriptive activity names to name the activities in the data set
# 4.  Appropriately labels the data set with descriptive variable names.
# 5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Set Working Directory
setwd("~/Library/Mobile Documents/com~apple~CloudDocs/Coursera")

# Download and load the data: training, test, features, and activity labels
install.packages("data.table")
install.packages("dplyr")
library(data.table)
library(dplyr)

if (!file.exists("data")) {
  dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip zipfile to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

# Read training data
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Read test data
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# Read features data
features <- read.table('./data/UCI HAR Dataset/features.txt')

# Read activity labels data
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# Use the features to assign desciptive variable names for training and test data
colnames(x_train) <- features[,2]
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

# Merges the training and the test data sets to create one data set.
mergedDataset <- rbind(cbind(y_train, subject_train, x_train), cbind(y_test, subject_test, x_test))

# Removes duplicate variable names so I can call select function in dplyr package
mergedDataset2 <- mergedDataset[ !duplicated(names(mergedDataset)) ]

# Extracts only the measurements on the mean and standard deviation for each measurement.
meanstdDataset <- select( mergedDataset2, subjectId, activityId, matches("mean()|std()", ignore.case = TRUE))

# Uses descriptive activity names to name the activities in the data set
colnames(activityLabels) <- c('activityId','activityName')

withActivityNames <- merge(meanstdDataset, activityLabels,
                              by='activityId',
                              all.x=TRUE)

# Here, appropriately labels for the data set are expanded with descriptive variable names.

# prefix t is replaced by time
# Acc is replaced by Accelerometer
# Gyro is replaced by Gyroscope
# prefix f is replaced by frequency
# Mag is replaced by Magnitude
# BodyBody is replaced by Body

names(withActivityNames)<-gsub("^t", "time", names(withActivityNames))
names(withActivityNames)<-gsub("^f", "frequency", names(withActivityNames))
names(withActivityNames)<-gsub("Acc", "Accelerometer", names(withActivityNames))
names(withActivityNames)<-gsub("Gyro", "Gyroscope", names(withActivityNames))
names(withActivityNames)<-gsub("Mag", "Magnitude", names(withActivityNames))
names(withActivityNames)<-gsub("BodyBody", "Body", names(withActivityNames))
names(withActivityNames)<-gsub("mean),", "mean,", names(withActivityNames))
names(withActivityNames) <- tolower(names(withActivityNames))

firsttidydataset <- select(withActivityNames, subjectid, activityid, activityname, everything())

write.table(firsttidydataset, "./data/firsttidydataset.txt", row.name=FALSE)

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

withActivityNames %>% group_by(subjectid, activityid) %>% summarize_all(mean) %>% secondtidydataset

bySubjectActivity<- arrange(withActivityNames, subjectid, activityid)
groupbySubjectActivity <- group_by(bySubjectActivity, subjectid, activityid, activityname)
secondtidydataset <- summarize_all(groupbySubjectActivity, mean)

write.table(secondtidydataset, "./data/secondtidydataset.txt", row.name=FALSE)
