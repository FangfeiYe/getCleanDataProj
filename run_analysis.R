#Project	
	
	#1.	Merges the training and the test sets to create one data set.
	#2.	Extracts only the measurements on the mean and standard #deviation for each measurement. 
	#3.	Uses descriptive activity names to name the activities in the data #set
	#4.	Appropriately labels the data set with descriptive activity names. 
    	#5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


#1.Merges the training and the test sets to create one data set.

#download data from website and unzip it on centain location

setwd("C:/Users/jf11/Desktop/R_Programming/")
download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ",destfile="UCIHARDATAset.zip",mode="wb")
unzip("UCIHARDATAset.zip")

#read in datasets which include #X_test,Y_test,subject_test,X_train,Y_train,subject_train,features,activity_labels.

X_test<-read.table("UCI HAR Dataset/test/X_test.txt")    #test set
#dim(X_test)   [1] 2947  561
Y_test<-read.table("UCI HAR Dataset/test/Y_test.txt")    #activity label
#dim(Y_test)   [1] 2947    1
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")  #Volunteers
#dim(subject_test) [1] 2947    1
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")    #train set
#dim(X_train)  [1] 7352  561
Y_train<-read.table("UCI HAR Dataset/train/Y_train.txt")   #activity label
#dim(Y_train)  [1] 7352    1
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")   #Volunteers
#dim(subject_train) [1] 7352    1
features<-read.table("UCI HAR Dataset/features.txt")       #list of all features
#dim(features) [1] 561   2
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt") #activity names
#dim(activity_labels) [1] 6 2

#binding test data tables & train data tables
#rename subject column and activity column

colnames(subject_test)<-c("subject")
colnames(subject_train)<-c("subject")
colnames(Y_test)<-c("activityLabel")
colnames(Y_train)<-c("activityLabel")

#binding test dataset
test_table1<-cbind(subject_test,Y_test,X_test)
#dim(test_table1) [1] 2947  563

#binding train dataset
train_table1<-cbind(subject_train,Y_train,X_train)
# dim(train_table1) [1] 7352  563

#merge both test & train data table

dataset<-rbind(test_table1,train_table1)
#dim(dataset) [1] 10299   563

#2. Extracts only the measurements on the mean and standard deviation for each measurement

#extract measurement name include mean() & std() from features.txt

mean_std_list<-subset(features,grepl("mean()", features[,2],fixed = T)|grepl("std()",features[,2],fixed=T))
#dim(mean_std_list)  [1] 66  2

#got dataset only with mean() & std() measurements
mean_std<-cbind(dataset[,1:2],dataset[,c(mean_std_list[,1])+2])

#3.Uses descriptive activity names to name the activities in the data set

#replace activity number code with real names: walking...., and remove the activity number code from dataset
colnames(activity_labels)<-c("activityLabel","activity")
activityData<-merge(activity_labels,mean_std,by="activityLabel")
#dim(activityData) [1] 10299    69
#remove activity numbers
activityData<-activityData[,2:69]
#dim(activityData) [1] 10299    68


#4.Appropriately labels the data set with descriptive activity names.

#replace special characters in measurements. "-,()"-->"_"
mean_std_list<-cbind(mean_std_list[,1],gsub("[[:punct:]]","",mean_std_list[,2]))
#rename column name with real measurement names.
for (i in 1:nrow(mean_std_list))
{
	names(activityData)[i+2]<-mean_std_list[i,2]
}


#5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#calculate mean for each subject and each activity.
library(reshape)
file1<-melt(activityData,id=c("activity","subject"))
file2<-cast(file1,activity+subject~variable,mean)
#dim(file2) [1] 180  68

#export final tide dataset
write.table(file2,file="tideData.txt",row.names=F,col.names=T,sep="\t",quote=F)

 