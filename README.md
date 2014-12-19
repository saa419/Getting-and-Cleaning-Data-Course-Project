# Readme - Getting and Cleaning Data Course Project

## Background
This repo contains my course project for the Coursera Getting and Cleaning Data course. The project consists of an R script called run_analysis.R that does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The CodeBook.md and the comments in the script provide further details and explanations.

## Instructions to run the script
1. Place the `run_analysis.R` script into your R working directory.
2. Download the data and extract it to a `UCI HAR Dataset` folder in your R working directory.
3. Run the script by executing `source("run_analysis.R")`. This will generate the `tidydataset.txt` file.
Note that the reshape 2 library must be installed, as it is called by the script.

## CodeBook
Please see CodeBook.md and the script comments for further details about the script and data.