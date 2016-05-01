# 3 Getting and Cleaning Data Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. All the source data for this project can be found in this repository.

The goals of this project are to:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

The script (run_analysis.R) that achieve the goals above can be found in the in this repository.

The analysis process of the script is as below:

a. Bind all the variables, including activities, subjects, and activities labels.
b. Bind 2 datasets (training and test sets) to create a new dataset
c. Search "mean" and "standard deviation" and identify the locations as well as lables
d. Extracts datasets with only the measurements on the mean and standard deviation as well as subject and activities label based on location found
e. Update variable names based on labels found
f. Calculate the means group by Subject and Activity Labels Description
g. Create the idependent tidy dataset.

After running the script,
the output (cleanData.txt) that contains the final deliverable can be found in this repository.
