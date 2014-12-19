# CodeBook - Getting and Cleaning Data Course Project

This CodeBook describes the variables, the data, and any transformations or work that I performed to clean up the data.

## Original data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained, which is located in the [uci.edu Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  
[Direct link to the data for the project (zip file)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Data description:
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## Variables
From `features_info.txt` in the dataset:
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz.

`features_info.txt` contains further details about the provided data, and `features.txt` contains a list of the 561 starting variables.

## Cleaning up the data: transformation
The requirements for the course project is that run_analysis.R do the following:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
A detailed breakdown of each step is given in the script comments.