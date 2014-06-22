
Data source: This data was collected during a study of 30 volumteers within an 
age bracket 19-48 years instructed to wear a smartphone embedded with 
accelerometer and gyroscope while performing 6 different activities. 
The device sensors recorded a variety of measurements.
More detail information about the study and this data can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Dataset for this project:
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.


Step1.	#1.Merges the training and the test sets to create one data set.
	
	set up path to download data and unzip it.
	setwd()
	download()
	unzip()
	read in datasets
	read.table()
	binding the training and test dataset
	cbind()
	rbind()
	
	
Step2.	#2.Extracts only the measurements on the mean and standard #deviation for each measurement. 
	
	Extract only mean(),std() measurements from features dataset
	subset()
	grepl()
	filter out variables only with mean(),std() from dataset created step 1

Step3.	#3.Uses descriptive activity names to name the activities in the data set

	replace activity number code with activity real name(Walking...)
	
	merge()
	
Step4.	#4.Appropriately labels the data set with descriptive activity names.

	remove special character('()','-'..) from all mean(),std() measurements
	gsub()
	replace column names with measurement names from above
	names()
	
Step5.	#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

	calculate mean for each subject and each activity
	library(reshape)
	melt()
	cast()
	export final dataset
	write.table()


