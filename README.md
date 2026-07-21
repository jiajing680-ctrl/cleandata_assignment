---
title: "Readme"
output: html_notebook
---
In this script, The data was download as zipfile from URL.
After unzip these packages.
Original files(X_test,y_test,X_train,y_train,subject_train,subject_test,activity_labels,features) were read into R using data.frame (fread)
The data.frame contain test and train variable data was named using the file read from "features", and the activity was applied as factor's label into the files containing activity level (y_test and y_train)
The column with names of "mean()"(fixed=TRUE )and "std" were screened by grap and selcted out from test and train data.frame into a new data.frame("text_x_select","train_x_select")
cbind was used to merge the subject, activity, and variable data into test file and train file("test_data_all""train_data_all")
rbind was used to merge the test data and train data to get the final clean data.frame of step4(data_all)
after that ,remove the std data from data-all file (data_final)
reshape data_final frame and tranfrom it into data.frame(data_final_frame)
group_by the subject and activity, and variable,then get the mean value of each variable under one subject and one activity
spread the mean_value into different variable, and get the final clean data frame(tidy_frame2_mean_value)
write the two clean data frame into csv files.


