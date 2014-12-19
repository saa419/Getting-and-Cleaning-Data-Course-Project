# CodeBook - Getting and Cleaning Data Course Project

This CodeBook describes the variables, the data, and any transformations or work that I performed to clean up the data.

## Original data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained, which is located in the [uci.edu Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)  
[Direct link to the data for the project (zip file)](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Data description:
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## Cleaning up the data: transformation
The requirements for the course project is that run_analysis.R do the following:  
1. Merges the training and the test sets to create one data set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  
3. Uses descriptive activity names to name the activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
A detailed breakdown of each step is given in the script comments.

## Variables
### Starting Variables
From `features_info.txt` in the dataset:  
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).  
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).  
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
> - tBodyAcc-XYZ
> - tGravityAcc-XYZ
> - tBodyAccJerk-XYZ
> - tBodyGyro-XYZ
> - tBodyGyroJerk-XYZ
> - tBodyAccMag
> - tGravityAccMag
> - tBodyAccJerkMag
> - tBodyGyroMag
> - tBodyGyroJerkMag
> - fBodyAcc-XYZ
> - fBodyAccJerk-XYZ
> - fBodyGyro-XYZ
> - fBodyAccMag
> - fBodyAccJerkMag
> - fBodyGyroMag
> - fBodyGyroJerkMag
> - The set of variables that were estimated from these signals are: 
> - mean(): Mean value
> - std(): Standard deviation
> - mad(): Median absolute deviation 
> - max(): Largest value in array
> - min(): Smallest value in array
> - sma(): Signal magnitude area
> - energy(): Energy measure. Sum of the squares divided by the number of values. 
> - iqr(): Interquartile range 
> - entropy(): Signal entropy
> - arCoeff(): Autorregresion coefficients with Burg order equal to 4
> - correlation(): correlation coefficient between two signals
> - maxInds(): index of the frequency component with largest magnitude
> - meanFreq(): Weighted average of the frequency components to obtain a mean frequency
> - skewness(): skewness of the frequency domain signal 
> - kurtosis(): kurtosis of the frequency domain signal 
> - bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
> - angle(): Angle between to vectors.
> - Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
> - gravityMean
> - tBodyAccMean
> - tBodyAccJerkMean
> - tBodyGyroMean
> - tBodyGyroJerkMean

`features.txt` contains a list of the 561 starting variables.

### Ending variables
After the transformation in the script, we end up with the following variables in the tidy data set.
> - Subject: Which of the 30 volunteers performed this activity.
> - Activity: One of six activities performed: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
> - tBodyAcc-mean()-X
> - tBodyAcc-mean()-Y
> - tBodyAcc-mean()-Z
> - tBodyAcc-std()-X
> - tBodyAcc-std()-Y
> - tBodyAcc-std()-Z
> - tGravityAcc-mean()-X
> - tGravityAcc-mean()-Y
> - tGravityAcc-mean()-Z
> - tGravityAcc-std()-X
> - tGravityAcc-std()-Y
> - tGravityAcc-std()-Z
> - tBodyAccJerk-mean()-X
> - tBodyAccJerk-mean()-Y
> - tBodyAccJerk-mean()-Z
> - tBodyAccJerk-std()-X
> - tBodyAccJerk-std()-Y
> - tBodyAccJerk-std()-Z
> - tBodyGyro-mean()-X
> - tBodyGyro-mean()-Y
> - tBodyGyro-mean()-Z
> - tBodyGyro-std()-X
> - tBodyGyro-std()-Y
> - tBodyGyro-std()-Z
> - tBodyGyroJerk-mean()-X
> - tBodyGyroJerk-mean()-Y
> - tBodyGyroJerk-mean()-Z
> - tBodyGyroJerk-std()-X
> - tBodyGyroJerk-std()-Y
> - tBodyGyroJerk-std()-Z
> - tBodyAccMag-mean()
> - tBodyAccMag-std()
> - tGravityAccMag-mean()
> - tGravityAccMag-std()
> - tBodyAccJerkMag-mean()
> - tBodyAccJerkMag-std()
> - tBodyGyroMag-mean()
> - tBodyGyroMag-std()
> - tBodyGyroJerkMag-mean()
> - tBodyGyroJerkMag-std()
> - fBodyAcc-mean()-X
> - fBodyAcc-mean()-Y
> - fBodyAcc-mean()-Z
> - fBodyAcc-std()-X
> - fBodyAcc-std()-Y
> - fBodyAcc-std()-Z
> - fBodyAcc-meanFreq()-X
> - fBodyAcc-meanFreq()-Y
> - fBodyAcc-meanFreq()-Z
> - fBodyAccJerk-mean()-X
> - fBodyAccJerk-mean()-Y
> - fBodyAccJerk-mean()-Z
> - fBodyAccJerk-std()-X
> - fBodyAccJerk-std()-Y
> - fBodyAccJerk-std()-Z
> - fBodyAccJerk-meanFreq()-X
> - fBodyAccJerk-meanFreq()-Y
> - fBodyAccJerk-meanFreq()-Z
> - fBodyGyro-mean()-X
> - fBodyGyro-mean()-Y
> - fBodyGyro-mean()-Z
> - fBodyGyro-std()-X
> - fBodyGyro-std()-Y
> - fBodyGyro-std()-Z
> - fBodyGyro-meanFreq()-X
> - fBodyGyro-meanFreq()-Y
> - fBodyGyro-meanFreq()-Z
> - fBodyAccMag-mean()
> - fBodyAccMag-std()
> - fBodyAccMag-meanFreq()
> - fBodyBodyAccJerkMag-mean()
> - fBodyBodyAccJerkMag-std()
> - fBodyBodyAccJerkMag-meanFreq()
> - fBodyBodyGyroMag-mean()
> - fBodyBodyGyroMag-std()
> - fBodyBodyGyroMag-meanFreq()
> - fBodyBodyGyroJerkMag-mean()
> - fBodyBodyGyroJerkMag-std()
> - fBodyBodyGyroJerkMag-meanFreq()