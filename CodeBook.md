# Course Project CodeBook

The final dataset that is created with the run_analysis.R script contains 180 observations and 88 variables.

The 180 observations represents 30 subjects for each the measurements were taken in 6 activities.

The first 2 variables of the data represent the Subject number and the activity.
The next 86 variables contains the mean observation of the measurement represented by the variable name.

the variables that are represented in this file come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
and for each of the mean is represented.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables means that is represented in this file is: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean 

Total variable list is - 
"Subject"                      
"Activity"                            
"tBodyAcc-mean()-X"                    
"tBodyAcc-mean()-Y"                   
"tBodyAcc-mean()-Z"                    
"tBodyAcc-std()-X"                    
"tBodyAcc-std()-Y"                     
"tBodyAcc-std()-Z"                    
"tGravityAcc-mean()-X"                 
"tGravityAcc-mean()-Y"                
"tGravityAcc-mean()-Z"                 
"tGravityAcc-std()-X"                 
"tGravityAcc-std()-Y"                  
"tGravityAcc-std()-Z"                 
"tBodyAccJerk-mean()-X"                
"tBodyAccJerk-mean()-Y"               
"tBodyAccJerk-mean()-Z"                
"tBodyAccJerk-std()-X"                
"tBodyAccJerk-std()-Y"                 
"tBodyAccJerk-std()-Z"                
"tBodyGyro-mean()-X"                   
"tBodyGyro-mean()-Y"                  
"tBodyGyro-mean()-Z"                   
"tBodyGyro-std()-X"                   
"tBodyGyro-std()-Y"                    
"tBodyGyro-std()-Z"                   
"tBodyGyroJerk-mean()-X"               
"tBodyGyroJerk-mean()-Y"              
"tBodyGyroJerk-mean()-Z"               
"tBodyGyroJerk-std()-X"               
"tBodyGyroJerk-std()-Y"                
"tBodyGyroJerk-std()-Z"               
"tBodyAccMag-mean()"                   
"tBodyAccMag-std()"                   
"tGravityAccMag-mean()"                
"tGravityAccMag-std()"                
"tBodyAccJerkMag-mean()"               
"tBodyAccJerkMag-std()"               
"tBodyGyroMag-mean()"                  
"tBodyGyroMag-std()"                  
"tBodyGyroJerkMag-mean()"             
"tBodyGyroJerkMag-std()"              
"fBodyAcc-mean()-X"                    
"fBodyAcc-mean()-Y"                   
"fBodyAcc-mean()-Z"                    
"fBodyAcc-std()-X"                    
"fBodyAcc-std()-Y"                     
"fBodyAcc-std()-Z"                    
"fBodyAcc-meanFreq()-X"                
"fBodyAcc-meanFreq()-Y"               
"fBodyAcc-meanFreq()-Z"                
"fBodyAccJerk-mean()-X"               
"fBodyAccJerk-mean()-Y"                
"fBodyAccJerk-mean()-Z"               
"fBodyAccJerk-std()-X"                 
"fBodyAccJerk-std()-Y"                
"fBodyAccJerk-std()-Z"                 
"fBodyAccJerk-meanFreq()-X"           
"fBodyAccJerk-meanFreq()-Y"            
"fBodyAccJerk-meanFreq()-Z"           
"fBodyGyro-mean()-X"                   
"fBodyGyro-mean()-Y"                  
"fBodyGyro-mean()-Z"                   
"fBodyGyro-std()-X"                   
"fBodyGyro-std()-Y"                    
"fBodyGyro-std()-Z"                   
"fBodyGyro-meanFreq()-X"               
"fBodyGyro-meanFreq()-Y"              
"fBodyGyro-meanFreq()-Z"               
"fBodyAccMag-mean()"                  
"fBodyAccMag-std()"                    
"fBodyAccMag-meanFreq()"              
"fBodyBodyAccJerkMag-mean()"           
"fBodyBodyAccJerkMag-std()"           
"fBodyBodyAccJerkMag-meanFreq()"       
"fBodyBodyGyroMag-mean()"             
"fBodyBodyGyroMag-std()"               
"fBodyBodyGyroMag-meanFreq()"         
"fBodyBodyGyroJerkMag-mean()"          
"fBodyBodyGyroJerkMag-std()"          
"fBodyBodyGyroJerkMag-meanFreq()"      
"angle(tBodyAccMean,gravity)"         
"angle(tBodyAccJerkMean),gravityMean)" 
"angle(tBodyGyroMean,gravityMean)"    
"angle(tBodyGyroJerkMean,gravityMean)" 
"angle(X,gravityMean)"                
"angle(Y,gravityMean)"                 
"angle(Z,gravityMean)" 
