# Code Book

## ID Fields
* activity - The type of activity
* subjectID - The subject of the observation

## Data fields
* timeBodyAcc-mean()-X
* timeBodyAcc-mean()-Y
* timeBodyAcc-mean()-Z
* timeBodyAcc-std()-X
* timeBodyAcc-std()-Y
* timeBodyAcc-std()-Z
* timeGravityAcc-mean()-X
* timeGravityAcc-mean()-Y
* timeGravityAcc-mean()-Z
* timeGravityAcc-std()-X
* timeGravityAcc-std()-Y
* timeGravityAcc-std()-Z
* timeBodyAccJerk-mean()-X
* timeBodyAccJerk-mean()-Y
* timeBodyAccJerk-mean()-Z
* timeBodyAccJerk-std()-X
* timeBodyAccJerk-std()-Y
* timeBodyAccJerk-std()-Z
* timeBodyGyro-mean()-X
* timeBodyGyro-mean()-Y
* timeBodyGyro-mean()-Z
* timeBodyGyro-std()-X
* timeBodyGyro-std()-Y
* timeBodyGyro-std()-Z
* timeBodyGyroJerk-mean()-X
* timeBodyGyroJerk-mean()-Y
* timeBodyGyroJerk-mean()-Z
* timeBodyGyroJerk-std()-X
* timeBodyGyroJerk-std()-Y
* timeBodyGyroJerk-std()-Z
* timeBodyAccMag-mean()
* timeBodyAccMag-std()
* timeGravityAccMag-mean()
* timeGravityAccMag-std()
* timeBodyAccJerkMag-mean()
* timeBodyAccJerkMag-std()
* timeBodyGyroMag-mean()
* timeBodyGyroMag-std()
* timeBodyGyroJerkMag-mean()
* timeBodyGyroJerkMag-std()
* freqBodyAcc-mean()-X
* freqBodyAcc-mean()-Y
* freqBodyAcc-mean()-Z
* freqBodyAcc-std()-X
* freqBodyAcc-std()-Y
* freqBodyAcc-std()-Z
* freqBodyAccJerk-mean()-X
* freqBodyAccJerk-mean()-Y
* freqBodyAccJerk-mean()-Z
* freqBodyAccJerk-std()-X
* freqBodyAccJerk-std()-Y
* freqBodyAccJerk-std()-Z
* freqBodyGyro-mean()-X
* freqBodyGyro-mean()-Y
* freqBodyGyro-mean()-Z
* freqBodyGyro-std()-X
* freqBodyGyro-std()-Y
* freqBodyGyro-std()-Z
* freqBodyAccMag-mean()
* freqBodyAccMag-std()
* freqBodyBodyAccJerkMag-mean()
* freqBodyBodyAccJerkMag-std()
* freqBodyBodyGyroMag-mean()
* freqBodyBodyGyroMag-std()
* freqBodyBodyGyroJerkMag-mean()
* freqBodyBodyGyroJerkMag-std()

## Activities
* WALKING (value = 1)
* WALKING_UPSTAIRS (value = 2)
* WALKING_DOWNSTAIRS (value = 3)
* SITTING (value = 4)
* STANDING (value = 5)
* LAYING (value = 6)

## Source
* The raw data for this project can be found at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* An article describing the original project can be found at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Original code book description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
