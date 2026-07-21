---
title: "CodeBook"
author: "Jing Jia"
date: "2026-07-19"
output: pdf_document
---
The following descriptiong is copied from original README file. And it was finally updated with variables and transformation in my assignment.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

data_test_and_train.csv: show the data of merged training and test sets, including measurements on the mean and standard deviation for each measurement under each activity catogary and subject. meanfreq data was excluded.

tidy2_mean_of_variable_per_subject_activity.csv: tidy data set with the average of each variable for each activity and each subject.

 "subject" :  each number referrs to one of the 30 volunteers
 "activity": Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

The variables are explained as following:

 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
mean(): Mean value
std(): Standard deviation

"tBodyAcc-mean()-X" :       
 [3] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"          
 [5] "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"           
 [7] "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"       
 [9] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"       
[11] "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"        
[13] "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"      
[15] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"      
[17] "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"       
[19] "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"         
[21] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"         
[23] "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"          
[25] "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"     
[27] "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"     
[29] "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"      
[31] "tBodyGyroJerk-std()-Z"       "tBodyAccMag-mean()"         
[33] "tBodyAccMag-std()"           "tGravityAccMag-mean()"      
[35] "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"     
[37] "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"        
[39] "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"    
[41] "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"          
[43] "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"          
[45] "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[47] "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"      
[49] "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"      
[51] "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[53] "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"         
[55] "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"         
[57] "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[59] "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"         
[61] "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()" 
[63] "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"    
[65] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()"
[67] "fBodyBodyGyroJerkMag-std()"                    


. 

