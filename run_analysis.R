setwd("C:/Users/hufeiling/learning/datascience/datasciencecoursera/Class3CleaningData/Week4/Project")

# 1. Merges the training and the test sets to create one data set.

# Read all datasets
subjectTest<-read.table("Source Data/test/subject_test.txt")
xTest<-read.table("Source Data/test/X_test.txt")
yTest<-read.table("Source Data/test/y_test.txt")
subjectTrain<-read.table("Source Data/train/subject_train.txt")
xTrain<-read.table("Source Data/train/X_train.txt")
yTrain<-read.table("Source Data/train/y_train.txt")

# Bind columns of (activities + subjects + activities labels)
# Bind rows of the training and the test sets
mergeData<-rbind(cbind(xTest,subjectTest,yTest),cbind(xTrain,subjectTrain,yTrain))

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Read features datasets with variables lables
features<-read.table("Source Data/features.txt")

# Find out locations for "mean" and "standard deviation"
meanDevLoc<-c(grep("(mean\\())|std",features$V2),562,563)

# Extracts datasets with only the measurements on the mean and standard deviation based on location found
extractMeanDev<-mergeData[,meanDevLoc]

# 3. Uses descriptive activity names to name the activities in the data set

# Extract descriptive labels for "mean" and "standard deviation"
meanDevLabel<-c(grep("(mean\\())|std",features$V2,value=TRUE),"Subject","Activity Labels")

# lable the activities with extracted descriptive labels
colnames(extractMeanDev)<-meanDevLabel

# 4. Appropriately labels the data set with descriptive variable names.

extractMeanDev$ActivityLabelsDesc<-factor(extractMeanDev$`Activity Labels`,levels = c(1,2,3,4,5,6),labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
cleanData<- extractMeanDev[,c(67,69,1:66)] %>% group_by(Subject,ActivityLabelsDesc) %>% summarize_each(funs(mean))
write.table(cleanData, file="cleanData.txt",row.name=FALSE)
