# GACD_Course_Project

This is the course project for the Coursera "Getting And Cleaning Data" course.

#run_analysis.R

The script works as follows:
<ol>
	<li>read the test and training datasets into R
	<li>column bind the subjects data into the the test and training data table
	<li>merge the test and training datasets
	<li>assign meaningful names to each column
	<li>extract only the columns where standard deviation and mean are applied.  I do this by grepping for "mean()" and "std()", doing a union on the index set, then extracting those column indices.
	<li>caclulate the mean of each group formed by the levels of the subject and activity.  Do this via the "by()" function.
	<li>merge the grouped datasets together
</ol>

#Codebook

The following variables are the mean of the correspondingly named variables in the original dataset,
grouped by "activity" and "subject" in the final dataset:

<ul>
<li>tBodyAcc-mean()-X
<li>tBodyAcc-mean()-Y
<li>tBodyAcc-mean()-Z
<li>tGravityAcc-mean()-X
<li>tGravityAcc-mean()-Y
<li>tGravityAcc-mean()-Z
<li>tBodyAccJerk-mean()-X
<li>tBodyAccJerk-mean()-Y
<li>tBodyAccJerk-mean()-Z
<li>tBodyGyro-mean()-X
<li>tBodyGyro-mean()-Y
<li>tBodyGyro-mean()-Z
<li>tBodyGyroJerk-mean()-X
<li>tBodyGyroJerk-mean()-Y
<li>tBodyGyroJerk-mean()-Z
<li>tBodyAccMag-mean()
<li>tGravityAccMag-mean()
<li>tBodyAccJerkMag-mean()
<li>tBodyGyroMag-mean()
<li>tBodyGyroJerkMag-mean()
<li>fBodyAcc-mean()-X
<li>fBodyAcc-mean()-Y
<li>fBodyAcc-mean()-Z
<li>fBodyAcc-meanFreq()-X
<li>fBodyAcc-meanFreq()-Y
<li>fBodyAcc-meanFreq()-Z
<li>fBodyAccJerk-mean()-X
<li>fBodyAccJerk-mean()-Y
<li>fBodyAccJerk-mean()-Z
<li>fBodyAccJerk-meanFreq()-X
<li>fBodyAccJerk-meanFreq()-Y
<li>fBodyAccJerk-meanFreq()-Z
<li>fBodyGyro-mean()-X
<li>fBodyGyro-mean()-Y
<li>fBodyGyro-mean()-Z
<li>fBodyGyro-meanFreq()-X
<li>fBodyGyro-meanFreq()-Y
<li>fBodyGyro-meanFreq()-Z
<li>fBodyAccMag-mean()
<li>fBodyAccMag-meanFreq()
<li>fBodyBodyAccJerkMag-mean()
<li>fBodyBodyAccJerkMag-meanFreq()
<li>fBodyBodyGyroMag-mean()
<li>fBodyBodyGyroMag-meanFreq()
<li>fBodyBodyGyroJerkMag-mean()
<li>fBodyBodyGyroJerkMag-meanFreq()
<li>tBodyAcc-std()-X
<li>tBodyAcc-std()-Y
<li>tBodyAcc-std()-Z
<li>tGravityAcc-std()-X
<li>tGravityAcc-std()-Y
<li>tGravityAcc-std()-Z
<li>tBodyAccJerk-std()-X
<li>tBodyAccJerk-std()-Y
<li>tBodyAccJerk-std()-Z
<li>tBodyGyro-std()-X
<li>tBodyGyro-std()-Y
<li>tBodyGyro-std()-Z
<li>tBodyGyroJerk-std()-X
<li>tBodyGyroJerk-std()-Y
<li>tBodyGyroJerk-std()-Z
<li>tBodyAccMag-std()
<li>tGravityAccMag-std()
<li>tBodyAccJerkMag-std()
<li>tBodyGyroMag-std()
<li>tBodyGyroJerkMag-std()
<li>fBodyAcc-std()-X
<li>fBodyAcc-std()-Y
<li>fBodyAcc-std()-Z
<li>fBodyAccJerk-std()-X
<li>fBodyAccJerk-std()-Y
<li>fBodyAccJerk-std()-Z
<li>fBodyGyro-std()-X
<li>fBodyGyro-std()-Y
<li>fBodyGyro-std()-Z
<li>fBodyAccMag-std()
<li>fBodyBodyAccJerkMag-std()
<li>fBodyBodyGyroMag-std()
<li>fBodyBodyGyroJerkMag-std()
</ul>

The activity and subject variables indicate if the values in the other other columns apply to either the "activity" value or the "subject" value.  If the "activity" column is NA, then the values apply to the value in the "subject" column and vice versa.

<li>activity
<li>subject
