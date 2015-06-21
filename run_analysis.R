#####################################Test##########################################
#Querying subject_test.txt data
subject_test_Data <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="\n")

#Querying X_test.txt data
X_test_Data <- read.table("./UCI HAR Dataset/test/X_test.txt")

#Querying y_test.txt data
y_test_Data <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="\n")

#Querying feature data for columns names
feature_data <- read.table("./UCI HAR Dataset/features.txt", sep="\n")

#Querying and cleaning feature data for columns names
feature_data <- read.table("./UCI HAR Dataset/features.txt", sep="\n")
feature_data[,1] = gsub("[0-9]", "", feature_data[,1])
feature_data[,1]= gsub(" ", "", feature_data[,1])
feature_data[,1]= gsub("[(,),-]", "", feature_data[,1])

#Setting column name using feature_data
colnames(X_test_Data) <- feature_data[,1]

#Extracting only the measurements on the mean and standard deviation for each measurement
X_test_Data <- X_test_Data[ ,which(grepl("mean()",names(X_test_Data)) |
                                         grepl("std()",names(X_test_Data)))]
#Adding Subject column
dataTest_subject<-cbind(X_test_Data,subject_test_Data)
#Renaming Subject column
names(dataTest_subject)[names(dataTest_subject)=="V1"] <- "Subject"
#Adding Activity column
dataTest_subject_Activity <- cbind(dataTest_subject,y_test_Data)
#Renaming Activity columns
names(dataTest_subject_Activity)[names(dataTest_subject_Activity)=="V1"] <- "Activity"
names(dataTest_subject_Activity)

#####################################Train##########################################
#Querying subject_train.txt data
subject_train_Data <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="\n")

#Querying X_train.txt data
X_train_Data <- read.table("./UCI HAR Dataset/train/X_train.txt")

#Querying y_train.txt data
y_train_Data <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="\n")

#Setting column name using feature_data
colnames(X_train_Data) <- feature_data[,1]

#Extracting only the measurements on the mean and standard deviation for each measurement
X_train_Data <- X_train_Data[ ,which(grepl("mean",names(X_train_Data)) |
                                               grepl("std",names(X_train_Data)))]
#Adding Subject column
dataTrain_subject<-cbind(X_train_Data,subject_train_Data)
#Renaming Subject column
names(dataTrain_subject)[names(dataTrain_subject)=="V1"] <- "Subject"
#Adding Activity column
dataTrain_subject_Activity <- cbind(dataTrain_subject,y_train_Data)
#Renaming Activity columns
names(dataTrain_subject_Activity)[names(dataTrain_subject_Activity)=="V1"] <- "Activity"

#Merging the training and the test sets to create one data set.
train_test_data <- rbind(dataTrain_subject_Activity,dataTest_subject_Activity)

#using activity labels to name the activities in the data set
train_test_data$Activity <- as.character(train_test_data$Activity)
train_test_data$Activity[train_test_data$Activity == "1"] <- "WALKING"
train_test_data$Activity[train_test_data$Activity == "2"] <- "WALKING_UPSTAIRS"
train_test_data$Activity[train_test_data$Activity == "3"] <- "WALKING_DOWNSTAIRS"
train_test_data$Activity[train_test_data$Activity == "4"] <- "SITTING"
train_test_data$Activity[train_test_data$Activity == "5"] <- "STANDING"
train_test_data$Activity[train_test_data$Activity == "6"] <- "LAYING"

#Saving the dataSet
write.csv(train_test_data, file = "tinyDataSet.csv")
write.table(train_test_data,file = "tinyDataSet.txt",row.name=FALSE) 
tinyDataSet <-read.csv("tinyDataSet.csv")


#Creating a second, independent tidy data set with the average 
#of each variable for each activity and each subject.
library(dplyr)
dataSetByActivityMember <- group_by(train_test_data, Activity,Subject)

library(reshape)
Molten <- melt(train_test_data, id.vars = c("Subject", "Activity"))
newDataSet <-cast(Subject + Activity ~ variable ,data = Molten, fun = mean)

newDataSet <- as.data.frame(newDataSet)
#Saving the second data Set
write.csv(newDataSet, file = "secondTinyDataSet.csv")
write.table(newDataSet, file = "secondTinyDataSet.txt",row.names = FALSE)
secondTinyDataSet <-read.csv("secondTinyDataSet.csv")
