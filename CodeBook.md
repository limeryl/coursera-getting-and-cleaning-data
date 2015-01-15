
###CodeBook


## Data Source
Original description of the dataset available at : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Data decription

- README.txt
- features_info.txt: 		Informations about feature
- features.txt: 			Features list.
- activity_labels.txt: 		Activity names Labels.
- X_train.txt: 				Training set.
- y_train.txt: 				Training labels.
- X_test.txt: 				Test set.
- y_test.txt: 				Test labels.
- subject_train.txt:		


## Assignment : processing
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Selected features:
As precised in Coursera FAQ about this assignement, the choice of mean/std is up to the data scientist.
Indeed, I select all the features being a mean of a standard deviation of a metric. Any other features is discarded.
We thus obtain the following list:

"tBodyAcc-mean()-X"<br>
"tBodyAcc-mean()-Y"<br>
"tBodyAcc-mean()-Z"<br>
"tBodyAcc-std()-X"<br>
"tBodyAcc-std()-Y"<br>
"tBodyAcc-std()-Z"<br>
"tGravityAcc-mean()-X"<br>
"tGravityAcc-mean()-Y"<br>
"tGravityAcc-mean()-Z"<br>
"tGravityAcc-std()-X"<br>
"tGravityAcc-std()-Y"<br>
"tGravityAcc-std()-Z"<br>
"tBodyAccJerk-mean()-X"<br>
"tBodyAccJerk-mean()-Y"<br>
"tBodyAccJerk-mean()-Z"<br>
"tBodyAccJerk-std()-X"<br>
"tBodyAccJerk-std()-Y"<br>
"tBodyAccJerk-std()-Z"<br>
"tBodyGyro-mean()-X"<br>
"tBodyGyro-mean()-Y"<br>
"tBodyGyro-mean()-Z"<br>
"tBodyGyro-std()-X"<br>
"tBodyGyro-std()-Y"<br>
"tBodyGyro-std()-Z"<br>
"tBodyGyroJerk-mean()-X"<br>
"tBodyGyroJerk-mean()-Y"<br>
"tBodyGyroJerk-mean()-Z"<br>
"tBodyGyroJerk-std()-X"<br>
"tBodyGyroJerk-std()-Y"<br>
"tBodyGyroJerk-std()-Z"<br>
"tBodyAccMag-mean()"<br>
"tBodyAccMag-std()"<br>
"tGravityAccMag-mean()"<br>
"tGravityAccMag-std()"<br>
"tBodyAccJerkMag-mean()"<br>
"tBodyAccJerkMag-std()"<br>
"tBodyGyroMag-mean()"<br>
"tBodyGyroMag-std()"<br>
"tBodyGyroJerkMag-mean()"<br>
"tBodyGyroJerkMag-std()"<br>
"fBodyAcc-mean()-X"<br>
"fBodyAcc-mean()-Y"<br>
"fBodyAcc-mean()-Z"<br>
"fBodyAcc-std()-X"<br>
"fBodyAcc-std()-Y"<br>
"fBodyAcc-std()-Z"<br>
"fBodyAcc-meanFreq()-X"<br>
"fBodyAcc-meanFreq()-Y"<br>
"fBodyAcc-meanFreq()-Z"<br>
"fBodyAccJerk-mean()-X"<br>
"fBodyAccJerk-mean()-Y"<br>
"fBodyAccJerk-mean()-Z"<br>
"fBodyAccJerk-std()-X"<br>
"fBodyAccJerk-std()-Y"<br>
"fBodyAccJerk-std()-Z"<br>
"fBodyAccJerk-meanFreq()-X"<br>
"fBodyAccJerk-meanFreq()-Y"<br>
"fBodyAccJerk-meanFreq()-Z"<br>
"fBodyGyro-mean()-X"<br>
"fBodyGyro-mean()-Y"<br>
"fBodyGyro-mean()-Z"<br>
"fBodyGyro-std()-X"<br>
"fBodyGyro-std()-Y"<br>
"fBodyGyro-std()-Z"<br>
"fBodyGyro-meanFreq()-X"<br>
"fBodyGyro-meanFreq()-Y"<br>
"fBodyGyro-meanFreq()-Z"<br>
"fBodyAccMag-mean()"<br>
"fBodyAccMag-std()"<br>
"fBodyAccMag-meanFreq()"<br>
"fBodyBodyAccJerkMag-mean()"<br>
"fBodyBodyAccJerkMag-std()"<br>
"fBodyBodyAccJerkMag-meanFreq()"<br>
"fBodyBodyGyroMag-mean()"<br>
"fBodyBodyGyroMag-std()"<br>
"fBodyBodyGyroMag-meanFreq()"<br>
"fBodyBodyGyroJerkMag-mean()"<br>
"fBodyBodyGyroJerkMag-std()"<br>
"fBodyBodyGyroJerkMag-meanFreq()"<br>
