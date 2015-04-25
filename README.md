# Course-Project
##Getting and Cleaing Data Course Project - READ ME

This read me file describe the analysis done by the run_analysis.R script - 

The script takes in the Samsung data and analize the mean of the 'mean' and 'standard deviation' 
of all the measured variables, and presents it per subject and activity in the final dataset.

###The assumption is the Samsung data folder "UCI HAR Dataset" is present in the working directory

The script main steps includes - 
Step 1 - Reading all relevant datasets of the taining and testing data - (x_ files), 
        combining them with the activity labels files - (Y_) files
        and the subject number files - (subject_) files
        Finally setting all data of trianing and testing together to create the fullset data

Step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
		this strp is done by applying the variable names to the fullset variables from the feature.txt file
		then using the agrep() function variables that have either "mean" or "std" in their name are extracted
		resulting in the set of relevant data (rel_set)

Step 3 - Uses descriptive activity names from the 'activity_labels.txt' file to name 
		the activities in the data set

Step 4 - Appropriately labels the data set with descriptive variable names
		This was done as part of Step 2

Step 5 - From the data set in step 4, creates a second, independent tidy data set 
		with the average of each variable for each activity and each subject.

Step 6 - Extracting the data to a text file

## Representing the results dataset as tidy data in R
The url provided in the course project for the tidy dataset opens a URL with the data that does not look very nice.
For better representation of the results and easier review please download the file to your local directory and open it with R. 

You can use the following code  for that -

fileurl<-"https://s3.amazonaws.com/coursera-uploads/user-64479309e2b67f58d3fb8070/973500/asst-3/45e1fce0eb6511e4b48c5b2b0c70d3a1.txt"

download.file(fileurl, destfile="Project course Results.txt")

data<- read.table("Project course Results.txt", header=TRUE)

View(data)
