# script Run_Analysis.R
# tidy dataset
# Readme
# Cookbook



# Assignment
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.





##0. Read data files ###############

# read features and activities files
features<-read.table("./features.txt",header=FALSE)
activity_labels<-read.table("./activity_labels.txt",header=FALSE)

# read training files
subject_train<-read.table("./train/subject_train.txt",header=FALSE)
X_train<-read.table("./train/X_train.txt",header=FALSE)
y_train<-read.table("./train/y_train.txt",header=FALSE)

# read test files
subject_test<-read.table("./test/subject_test.txt",header=FALSE)
X_test<-read.table("./test/X_test.txt",header=FALSE)
y_test<-read.table("./test/y_test.txt",header=FALSE)


##1.Merges the training and the test sets. #####
X_merged <- rbind(X_train, X_test)
Y_merged <- rbind(y_train, y_test)
Subject_merged <- rbind(subject_train, subject_test)


## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 2.1 filters the feature we need (mean and std)
filtered_features <- (features[grepl("mean|std", features[,2]),])
#Name and filter X_merged set
names(X_merged) = (features[,2])
X_merged = X_merged[,filtered_features[,2]]
names(X_merged) = filtered_features[,2]

#Name subjects
names(Subject_merged) <- c("Subject")

#Name & use descriptive for Activities
Y_merged<-data.frame(activity_labels[Y_merged[,1],2])
names(Y_merged) <- c("Activity")


# Merge all in a tidy dataset
tidy_data<-cbind(X_merged, cbind(Subject_merged, Y_merged))
names(tidy_data) <- ((rbind(filtered_features, rbind(c(562, "Subject"), c(563, "Activity"))))[,2])

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(tidy_data, file = "./tidy_data.txt", sep=';', row.name=FALSE)