# 3 Getting and Cleaning Data Project

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set.


All the source data for this project can be found in the link below: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


###Brief Description of the study:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Finally a Fast Fourier Transform (FFT) was applied to some of these signals.

A vector of 561 features was obtained by calculating variables from the time and frequency domain. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


###The goals of this project are to:

 1. Merge the training and the test sets to create one data set.

 2. Extract only the measurements on the mean and standard deviation for each measurement.

 3. Use descriptive activity names to name the activities in the data set

 4. Appropriately label the data set with descriptive variable names.

 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.


To accomplish the goals, datasets that will be used are: 

    Subject information: subject_test.txt, subject_train.txt;  
    Activity data: X_test.txt, X_train.txt; 
    Activity labels (WALKING, WALKING_UPSTAIRS, etc.): y_test.txt, y_train.txt; 
    List of variables (with variable names) of each feature vector: features.txt.


The set of variables that will be extracted are: 

    mean(): Mean value; 
    std(): Standard deviation


The script (run_analysis.R) that will achieve the goals above can be found in the in this repository.


###The analysis process of the script is as below:

   a.Download all source datasets and read them into R
 
   b. Bind the columns of subject_test.txt, X_test.txt, y_test.txt; also the columns of subject_train.txt, X_train.txt, y_train.txt to bind all the variables of activities, subjects, and activities labels

   c. Bind all the rows of the 2 datasets (training and test sets) to create a new dataset

   d. Search key words "mean" and "standard deviation" in features.txt to identify the locations of these key words and extract corresponding variable labels

   e. From the new datase created in step c, extract a subset with only the measurements on the mean and standard deviation based on location found in step d.

   f. Update variable names based on the corresponding variable labels extracted in step d

   g. Calculate the means group by Subject and Activity Labels Description using dplyr package.

   h. Create the idependent tidy dataset.

###Clean and Tidy data sets:

After running the script, the output (cleanData.txt) that contains the final deliverable as well as the Code Book (CodeBook.md) can be found in this repository.
