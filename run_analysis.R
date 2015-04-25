# This script takes in the Samsung data and analize the mean of the mean and standard deviation
# of all the measured variables, and presents it per subject and activity in the final dataset.
# The assumption is the Samsung data folder "UCI HAR Dataset" is present in the working directory

# uploading relevatn libraries for this script
library(Hmisc)
library(plyr)
library(reshape2)


# Step 1 - reading all relevant datasets of the taining and testing data - (x_ files), 
#          combining them with the activity labels files - (Y_) files
#          and the subject number files - (subject_) files
#          Finally setting all data of trianing and testing together to create the fullset data


Xtrain<- read.table("./UCI HAR Dataset/train/x_train.txt")
Ytrain<- read.table("./UCI HAR Dataset/train/y_train.txt")
Strain<- read.table("./UCI HAR Dataset/train/subject_train.txt")

Xtest<- read.table("./UCI HAR Dataset/test/x_test.txt")
Ytest<- read.table("./UCI HAR Dataset/test/y_test.txt")
Stest<- read.table("./UCI HAR Dataset/test/subject_test.txt")

TrainSet<- cbind(Strain, Ytrain, Xtrain)
TestSet <- cbind(Stest, Ytest, Xtest)
fullset <- rbind(TrainSet, TestSet)

# Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
#       this strp is done by applying the variable names to the fullset variables from the feature.txt file
#       then using the agrep() function variables that have either "mean" or "std" in their name are extracted
#       resukting in the set of relevant data (rel_set)

features<-read.table("./UCI HAR Dataset/features.txt")
names<-as.character(features[,2])
# The fullset of data contains also the subject and activity colunbs combind to it therefore they
# are added to the column names vector
ColumnNames<-c("Subject", "Activity", names)
colnames(fullset)<-ColumnNames

# Extracting the indexes of the relevatn varaibles names, containing either'mean' or 'std'
meanVec<-agrep("mean", ColumnNames)
stdVec<-agrep("std", ColumnNames)
colIndex<-sort(c(meanVec, stdVec))
# Adding the subject and activity variable indexes
colIndex<-c(1,2,colIndex)
# Extracting the relevant set of data
rel_set<-subset(fullset[,colIndex])

# Step 3 - Uses descriptive activity names from the 'activity_labels.txt' file to name 
#       the activities in the data set

labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
# Formating the Activity variable as factor, and assiging the levels based on the activity labels file
rel_set[,"Activity"]<-as.factor(rel_set[,"Activity"])
levels(rel_set$Activity)<-as.character(labels[,"V2"])

# Step 4 - Appropriately labels the data set with descriptive variable names
#       This was done as part of Step 2

# Step 5 -From the data set in step 4, creates a second, independent tidy data set 
#       with the average of each variable for each activity and each subject.

col_num<-ncol(rel_set)
rel_set_col<-colnames(rel_set)
# Rearranging the dataset so all the measurments are in the VAriable columns per subject and activity
melt_set<-melt(rel_set, id=c("Subject", "Activity"), measure.vars=rel_set_col[3:col_num])
# Formatting the data to show the mean for each measurment per subject per activity.
finalset<-dcast(melt_set,Subject + Activity ~ variable, mean, rm.na=TRUE)

# Extracting the data to a text file
write.table(finalset, file="Project course Results.txt", row.name=FALSE)

###
