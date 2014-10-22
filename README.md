tidy_data_project
=================

##Repo for Getting and Cleaning Data class project

This script process sample data from Samsung study by combining test-set and training-set data into a complete set. Only columns containing the mean or std-dev of a measurement have been retained. Finally, the measurements are averaged out by subject and activity.


##Code Sets
Subject_Code:	Each participant was given a code from 1 to 30.
Activity:	The name of the activity performed. Decoded from the activity data set.

Measurements of the subjet's body accelrometer in three axis. Mean and standard deviation
*tBodyAcc-mean()-X
*tBodyAcc-mean()-Y
*tBodyAcc-mean()-Z      
*tBodyAcc-std()-X
*tBodyAcc-std()-Y
*tBodyAcc-std()-Z

Measurements of the subjet's gravitational accelrometer in three axis. Mean and standard deviation
*tGravityAcc-mean()-X
*tGravityAcc-mean()-Y   
*tGravityAcc-mean()-Z
*tGravityAcc-std()-X
*tGravityAcc-std()-Y
*tGravityAcc-std()-Z

body linear acceleration measurements in three axis. Mean and standard deviation
*tBodyAccJerk-mean()-X  
*tBodyAccJerk-mean()-Y
*tBodyAccJerk-mean()-Z
*tBodyAccJerk-std()-X
*tBodyAccJerk-std()-Y
*tBodyAccJerk-std()-Z   

angular velocity measurements in three axis. Mean and standard deviation
*tBodyGyro-mean()-X
*tBodyGyro-mean()-Y
*tBodyGyro-mean()-Z
*tBodyGyro-std()-X
*tBodyGyro-std()-Y      
*tBodyGyro-std()-Z

A triple axis gyro body jerk has never been performed in Olympic figure skating competition.
*tBodyGyroJerk-mean()-X
*tBodyGyroJerk-mean()-Y
*tBodyGyroJerk-mean()-Z
*tBodyGyroJerk-std()-X  
*tBodyGyroJerk-std()-Y
*tBodyGyroJerk-std()-Z

Calculated magnitude of these three-dimensional signals
*tBodyAccMag-mean()
*tBodyAccMag-std()
*tGravityAccMag-mean()  
*tGravityAccMag-std()
*tBodyAccJerkMag-mean()
*tBodyAccJerkMag-std()
*tBodyGyroMag-mean()
*tBodyGyroMag-std()     
*tBodyGyroJerkMag-mean()
*tBodyGyroJerkMag-std() 
