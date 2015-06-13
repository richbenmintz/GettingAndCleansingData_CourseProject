#run_Analysis.R
#This script will perform the following action on the data found in the 
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip dataset
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analysis<-function(filePath="UCI Har DataSet", destFileName="tidydata.txt")
{
      #get the test x axis data
      test_X_Data<-read.table(file.path("UCI Har DataSet", "test", "x_test.txt"),header=FALSE )
      #get the test y axis data
      test_Y_Data<-read.table(file.path("UCI Har DataSet", "test", "y_test.txt"),header=FALSE )
      #get the Subject for the test data
      test_Subject_Data<-read.table(file.path("UCI Har DataSet", "test", "subject_test.txt"),header=FALSE )
      
      #get the train x axis data
      train_X_Data<-read.table(file.path("UCI Har DataSet", "train", "x_train.txt"),header=FALSE )
      #get the train y axis data
      train_Y_Data<-read.table(file.path("UCI Har DataSet", "train", "y_train.txt"),header=FALSE )
      #get the Subject for the test data
      train_Subject_Data<-read.table(file.path("UCI Har DataSet", "train", "subject_train.txt"),header=FALSE )
      
      #get the names for the variables in the x_data
      columnHeaders<-read.table(file.path("UCI Har DataSet", "features.txt"),header=FALSE )
      #subset the columnHeaders to get the mean and std columns \\ excape the Brackets
      columnHeadersOfInterest<-columnHeaders$V2[grep("mean\\(\\)|std\\(\\)", columnHeaders$V2)]
      
      #row bind the Data
      x_Data <- rbind(train_X_Data, test_X_Data)
      y_Data <- rbind(train_Y_Data, test_Y_Data)
      subjectData <- rbind(train_Subject_Data,test_Subject_Data )
      
      #Column bind the x_Data and y_Data
      mergedData<-cbind(subjectData,y_Data, x_Data)
      
      
      #provide friendly name to first column of subject_Data set
      names(subjectData)<-c("subject")
      #provide friendly names to the x Data set
      names(x_Data)<-columnHeaders$V2
     
      #get the activity labels to map to the y_data factors      
      activities<-read.table(file.path("UCI Har DataSet", "activity_labels.txt"),header=FALSE )
      #turn the y_Data$V1 into a factor
      y_Data<-factor(y_Data$V1)
      #set the factor levels to activity labels
      levels(y_Data)<-activities$V2
      #coerce back to data frame
      y_Data<-as.data.frame(y_Data)    
      
      #provide friendly name Y_Data set
      names(y_Data)<-c("activity")
      
      #Column bind the x_Data and y_Data
      mergedData<-cbind(subjectData,y_Data, x_Data)       
      
  
       #add the subject and activity columns to the columns of interest set
      columnHeadersOfInterest<-c("subject", "activity",as.character(columnHeadersOfInterest))
      
      #subset the data to include only the columns of interest
      mergedData<-subset(mergedData,select=columnHeadersOfInterest)

      #Provide more meaningful names to the vectors
      #replace t with Time
      names(mergedData) <- gsub("^t", "Time", names(mergedData))
      #replace t with Time
      names(mergedData) <- gsub("^f", "Frequency", names(mergedData))
      #replace gyro with gyroscope
      names(mergedData) <- gsub("Gyro", "Gyroscope", names(mergedData))
      #replace acc with accelerometer
      names(mergedData) <- gsub("Acc", "Accelerometer", names(mergedData))
      #replace mag with magnitude
      names(mergedData) <- gsub("Mag", "Magnitude", names(mergedData))
      #replace bodybody with body
      names(mergedData) <- gsub("BodyBody", "Body", names(mergedData))
      #remove brackets
      names(mergedData) <- gsub("\\(\\)", "", names(mergedData))
      #replace std with stDev
      names(mergedData) <- gsub("std", "stDev", names(mergedData))
      #use dplyr package
      
      library(dplyr)
     
      tidyData<-mergedData %>% group_by(subject, activity) %>% summarise_each(funs(mean))
      write.table(tidyData, file = destFileName,row.name=TRUE)
      
}



