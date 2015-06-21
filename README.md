# ReadMe

run_analysis.R script purpose is to make a tidy data set of the Human Activity Recognition Using Smartphones Dataset.
The script was written in R.

## What will you need ?
In order to execute the script correctly you'll need two packages mainly:
reshape.
dplyr.


## What does the script do.

In a nutshell this is what the script does:
It starts by querrying the data subject_test.txt, X_test.txt and the y_test.txt data.
After that we set the column name of the forming data using  the feature_text.txt data
We then filter to keep only the mean and std variables.
We use the subject_test.txt data to create the Subject column.
We use the y_test.txt data to set the Activity column.
The same approach was made for the train data.
At the end we bind the data frame produce by the two previous data frames.
Also from the later data frame we've created a second
independent tidy data set with the average of each variable for each activity and each subject.

## How to proceed to use this script ?
1. Download the data for the project using this link and extract it in your working directory
[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Download and place the run_analysis.R script in your working directory.
3. Download the necessary package before running the script
4. After running the script you should see in your working directory, two tiny data set namely "tinyDataSet.csv" and "secondTinyDataSet.csv"
