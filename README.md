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
