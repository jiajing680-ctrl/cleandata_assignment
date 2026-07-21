## load the file of features
url1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url1,"z.zip",mode="wb")
uz<-unzip("z.zip")
features<-fread("./UCI HAR Dataset/features.txt")
##load the test file
test_x<-fread("./UCI HAR Dataset/test/X_test.txt")
##name the column of test file with feartures
colnames(test_x)<-features$V2

## select out the colummn about mean and sd value of each measurement
col_mean<-grep("mean()",features$V2,fixed=TRUE)
col_std<-grep("std",features$V2)
col_select<- sort(c(col_mean,col_std))

test_x_select<-select(test_x,features$V2[col_select])


## laod the train file, and name the column, select out the mean and sd 
train_x<-fread("./UCI HAR Dataset/train/X_train.txt")
colnames(train_x)<-features$V2
train_x_select<-select(train_x,features$V2[col_select])
## load the activity lable file and get the variable contain activity name
activity_level<-fread("./UCI HAR Dataset/activity_labels.txt")
activity_factor<-activity_level$V2
##load y file of test and label the 6 activities

test_y<-fread("./UCI HAR Dataset/test/y_test.txt")
test_y$activity<-factor(test_y$V1,levels=c(1:6),labels= activity_factor)

## get the test_data with variable and activity
test_data<-cbind(test_x_select,test_y[,2])
## load the subject file of test
subject_test<-fread("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test)<-"subject"
## get the test data with subject, activity and variable
test_data_all<-cbind(subject_test,test_data)

## get the y file of train, and label the activity 
train_y<-fread("./UCI HAR Dataset/train/y_train.txt")
train_y$activity<-factor(train_y$V1,levels=c(1:6),labels= activity_factor)
## get the train data with activity and variable
train_data<-cbind(train_x_select,train_y[,2])
## get the subject data of train file
subject_train<-fread("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train)<-"subject"
## get the train data with subject, activity and variable
train_data_all<-cbind(subject_train,train_data)

## merge the test data and train date
data_all<-rbind(test_data_all,train_data_all)
## finish the step 4
 

##reshape the form of data_all
unique_variable<-unique(c(names(data_all[,-c(1,68)])))
data_final<-data_all %>% melt(id.vars=c("subject","activity"),measure.vars=unique_variable)
## get the mean value of each variable,and rename the column
data_final_frame<-as_tibble(data_final)
mean_calculate<-data_final_frame%>% group_by(subject,activity,variable)%>% summarize(mean(value))
colnames(mean_calculate)<-c("subject","activity","variable","average_value")
## get the tidy form for step 5
tidy_frame2_mean_value<-spread(mean_calculate,variable,average_value)%>% print

