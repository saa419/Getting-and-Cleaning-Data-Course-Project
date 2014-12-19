## R script called run_analysis.R that does the following. 
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## 1: Merges the training and the test sets to create one data set-
## First, load all the X, Y and Subject train and test data.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

## Next, merge the train and test data for x, y, and subject using rbind (rows).
## We will merge x, y and subj later on in the script.
x <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subj <- rbind(subject_train, subject_test)

## 2: Extracts only the measurements on the mean and standard deviation for each measurement-
## First, load features labels.
features <- read.table("./UCI HAR Dataset/features.txt")
## Rename the columns in x as the feature names
names(x) = features[,2]
## Search the features that only measure mean or standard deviation, and store them temporarily in meanstdfeatures.
meanstdfeatures <- grepl("mean|std", features[,2])
## Only keep the columns that measure mean or standard deviation by subsetting the columns that match the ones stored in meanstdfeatures.
x = x[,meanstdfeatures]

## 3: Uses descriptive activity names to name the activities in the data set-
## First, load the activity labels.
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
## Name the activities in y using the descriptive activity names.
y[, 1] = activities[y[, 1], 2]

## 4: Appropriately labels the data set with descriptive activity names-
names(y) <- "Activity"
names(subj) <- "Subject"

## Next, merge the x, y, and subj data into a full data set using cbind (columns).
FullDataSet <- cbind(subj, y, x)

## 5: Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject-
## Load the reshape2 library for the melt function.
library(reshape2)
## Identify the id_columns
id_columns = c("Subject", "Activity")
## Label everything that isn't an id_column as a data column for melting and casting.
data_columns = setdiff(colnames(FullDataSet), id_columns)
## Melt the activities
activityMelt = melt(FullDataSet, id = id_columns, measure.vars = data_columns)

## Cast the data frame with the mean function
tidydataset = dcast(activityMelt, Subject + Activity ~ variable, mean)

## Output the file
write.table(tidydataset, file = "./tidydataset.txt", row.names = FALSE)