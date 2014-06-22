Data Dictionary--Human Activity Recognition Using Smartphones Dataset		


Source:This data was collected during a study of 30 volumteers within an 
age bracket 19-48 years instructed to wear a smartphone embedded with 
accelerometer and gyroscope while performing 6 different activities. 
The device sensors recorded a variety of measurements.
More detail information about the study and this data can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Transformation:From the project instructions: "Extracts only the measurements
on the mean and standard deviation for each measurement."--only the measurements with -mean() or -std()
This filtering resulted in 66 measurement variables. The text file produced by 
running the run_analysis.R script also includes activity and subject features.
The variable names were originally represented with non-descriptive labels 
such as "V1". These were replaced with the feature names found in the 
UCI HAR Data Set features.txt. 

Variable Detail:

Variable Name	Type	Description
activity	character	six activities performed by subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
subject	Integer	a group of 30 volunteers within an age bracket of 19-48 years
tBodyAccmeanX	numeric	Mean value of time domain of body acceleration signal X axis
tBodyAccmeanY	numeric	Mean Value of time domain of body acceleration signal Y axis
tBodyAccmeanZ	numeric	Mean Value of time domain of body acceleration signal Z axis
tBodyAccstdX	numeric	Standard deviation of time domain of body acceleration signal X axis
tBodyAccstdY	numeric	Standard deviation of time domain of body acceleration signal Y axis
tBodyAccstdZ	numeric	Standard deviation of time domain of body acceleration signal Y axis
tGravityAccmeanX	numeric	Mean value of time domain of gravity acceleration signal X axis
tGravityAccmeanY	numeric	Mean Value of time domain of gravity acceleration signal Y axis
tGravityAccmeanZ	numeric	Mean Value of time domain of gravity acceleration signal Z axis
tGravityAccstdX	numeric	Standard deviation of time domain of gravity acceleration signal X axis
tGravityAccstdY	numeric	Standard deviation of time domain of gravity acceleration signal Y axis
tGravityAccstdZ	numeric	Standard deviation of time domain of gravity acceleration signal Y axis
tBodyAccJerkmeanX	numeric	Mean value of time domain of body acceleration Jerk signal X axis
tBodyAccJerkmeanY	numeric	Mean Value of time domain of body acceleration Jerk signal Y axis
tBodyAccJerkmeanZ	numeric	Mean Value of time domain of body acceleration Jerk signal Z axis
tBodyAccJerkstdX	numeric	Standard deviation of time domain of body acceleration Jerk signal X axis
tBodyAccJerkstdY	numeric	Standard deviation of time domain of body acceleration Jerk signal Y axis
tBodyAccJerkstdZ	numeric	Standard deviation of time domain of body acceleration Jerk signal Y axis
tBodyGyromeanX	numeric	Mean value of time domain of body gyroscope signal X axis
tBodyGyromeanY	numeric	Mean Value of time domain of body gyroscope signal Y axis
tBodyGyromeanZ	numeric	Mean Value of time domain of body gyroscope signal Z axis
tBodyGyrostdX	numeric	Standard deviation of time domain of body gyroscope signal X axis
tBodyGyrostdY	numeric	Standard deviation of time domain of body gyroscope signal Y axis
tBodyGyrostdZ	numeric	Standard deviation of time domain of body gyroscope signal Y axis
tBodyGyroJerkmeanX	numeric	Mean value of time domain of body gyroscope Jerk signal X axis
tBodyGyroJerkmeanY	numeric	Mean Value of time domain of body gyroscope Jerk signal Y axis
tBodyGyroJerkmeanZ	numeric	Mean Value of time domain of body gyroscope Jerk signal Z axis
tBodyGyroJerkstdX	numeric	Standard deviation of time domain of body gyroscope Jerk signal X axis
tBodyGyroJerkstdY	numeric	Standard deviation of time domain of body gyroscope Jerk signal Y axis
tBodyGyroJerkstdZ	numeric	Standard deviation of time domain of body gyroscope Jerk signal Y axis
tBodyAccMagmean	numeric	Mean Value of time domain of body acceleration magnitude signal
tBodyAccMagstd	numeric	Standard deviation of time domain of body acceleration magnitude signal 
tGravityAccMagmean	numeric	Mean Value of time domain of gravity acceleration magnitude signal
tGravityAccMagstd	numeric	Standard deviation of time domain of gravity acceleration magnitude signal 
tBodyAccJerkMagmean	numeric	Mean Value of time domain of body acceleration Jerk magnitude signal
tBodyAccJerkMagstd	numeric	Standard deviation of time domain of body acceleration Jerk magnitude signal 
tBodyGyroMagmean	numeric	Mean Value of time domain of body gyroscope magnitude signal
tBodyGyroMagstd	numeric	Standard deviation of time domain of body gyroscope magnitude signal 
tBodyGyroJerkMagmean	numeric	Mean Value of time domain of body gyroscope Jerk magnitude signal
tBodyGyroJerkMagstd	numeric	Standard deviation of time domain of body gyroscope Jerk magnitude signal 
fBodyAccmeanX	numeric	Mean value of frequency domain of body acceleration signal X axis
fBodyAccmeanY	numeric	Mean Value of frequency domain of body acceleration signal Y axis
fBodyAccmeanZ	numeric	Mean Value of frequency domain of body acceleration signal Z axis
fBodyAccstdX	numeric	Standard deviation of  frequency domain of body acceleration signal X axis
fBodyAccstdY	numeric	Standard deviation of frequency domain of body acceleration signal Y axis
fBodyAccstdZ	numeric	Standard deviation of frequency domain of body acceleration signal Y axis
fBodyAccJerkmeanX	numeric	Mean value of frequency domain of body acceleration Jerk signal X axis
fBodyAccJerkmeanY	numeric	Mean Value of frequency domain of body acceleration Jerk signal Y axis
fBodyAccJerkmeanZ	numeric	Mean Value of frequency domain of body acceleration Jerk signal Z axis
fBodyAccJerkstdX	numeric	Standard deviation of frequency domain of body acceleration Jerk signal X axis
fBodyAccJerkstdY	numeric	Standard deviation of frequency domain of body acceleration Jerk signal Y axis
fBodyAccJerkstdZ	numeric	Standard deviation of frequency domain of body acceleration Jerk signal Y axis
fBodyGyromeanX	numeric	Mean value of frequency domain of body gyroscope signal X axis
fBodyGyromeanY	numeric	Mean Value of frequency domain of body gyroscope signal Y axis
fBodyGyromeanZ	numeric	Mean Value of frequency domain of body gyroscope signal Z axis
fBodyGyrostdX	numeric	Standard deviation of frequency domain of body gyroscope signal X axis
fBodyGyrostdY	numeric	Standard deviation o frequency domain of body gyroscope signal Y axis
fBodyGyrostdZ	numeric	Standard deviation of frequency domain of body gyroscope signal Y axis
fBodyAccMagmean	numeric	Mean Value of  frequency domain of body acceleration magnitude signal
fBodyAccMagstd	numeric	Standard deviation of  frequency domain of body acceleration magnitude signal 
fBodyBodyAccJerkMagmean	numeric	Mean Value of frequency domain of body acceleration Jerk magnitude signal
fBodyBodyAccJerkMagstd	numeric	Standard deviation of frequency domain of body acceleration Jerk magnitude signal 
fBodyBodyGyroMagmean	numeric	Mean Value of frequency domain of body gyroscope magnitude signal
fBodyBodyGyroMagstd	numeric	Standard deviation of frequency domain of body gyroscope magnitude signal 
fBodyBodyGyroJerkMagmean	numeric	Mean Value of frequency domain of body gyroscope Jerk magnitude signal
fBodyBodyGyroJerkMagstd	numeric	Standard deviation of frequency domain of body gyroscope Jerk magnitude signal 
