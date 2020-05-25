# Codebook for merged_data_summarized.txt

## Description of the dataset
The data is the result of the script *run_analysis.R* which merges and summarizes the orignal data from [Human Activity Recognition Using Smartphones Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) provided by [UCI machine learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). **[1]**

See README.md**[2]** for more information on processing of the data.

### Description of the measurements (original)
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variables in the merged_data_summarized.txt dataset
* subject_id  
The unique key for each person contributing. Integer values from 1...30
* activity
The performed activity of the subject. [LAYING, SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS]
* Time.BodyAcc.mean.X
Mean body linear acceleartion in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAcc.mean.Y
Mean body linear acceleartion in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAcc.mean.Z
Mean body linear acceleartion in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAcc.std.X
Standard deviation of body linear acceleartion in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAcc.std.Y
Standard deviation of body linear acceleartion in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAcc.std.Z
Standard deviation of body linear acceleartion in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.GravityAcc.mean.X
Mean gravity acceleartion in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.GravityAcc.mean.Y
Mean gravity acceleartion in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.GravityAcc.mean.Z
Mean gravity acceleartion in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.GravityAcc.std.X
Standard deviation gravity acceleartion in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.GravityAcc.std.Y
Standard deviation gravity acceleartion in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.GravityAcc.std.Z
Standard deviation gravity acceleartion in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccJerk.mean.X
Mean body acceleartion jerk in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccJerk.mean.Y
Mean body acceleartion jerk in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccJerk.mean.Z
Mean body acceleartion jerk in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccJerk.std.X
Standard deviation body acceleartion jerk in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccJerk.std.Y
Standard deviation body acceleartion jerk in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccJerk.std.Z
Standard deviation body acceleartion jerk in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyro.mean.X
Mean body angular velocity in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyro.mean.Y
Mean body angular velocity in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyro.mean.Z
Mean body angular velocity in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyro.std.X
Standard deviation body angular velocity in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyro.std.Y
Standard deviation body angular velocity in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyro.std.Z
Standard deviation body angular velocity in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyroJerk.mean.X
Mean body gyroscope jerk in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyroJerk.mean.Y
Mean body gyroscope jerk in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyroJerk.mean.Z
Mean body gyroscope jerk in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyroJerk.std.X
Standard deviation body gyroscope jerk in x direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyroJerk.std.Y
Standard deviation body gyroscope jerk in y direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyGyroJerk.std.Z
Standard deviation body gyroscope jerk in z direction (time domain). Normalized numeric values in intervall [-1.0,1.0], dimensionless
* Time.BodyAccMag.mean
* Time.BodyAccMag.std
* Time.GravityAccMag.mean
* Time.GravityAccMag.std
* Time.BodyAccJerkMag.mean
* Time.BodyAccJerkMag.std
* Time.BodyGyroMag.mean
* Time.BodyGyroMag.std
* Time.BodyGyroJerkMag.mean
* Time.BodyGyroJerkMag.std
* Freq.BodyAcc.mean.X
* Freq.BodyAcc.mean.Y
* Freq.BodyAcc.mean.Z
* Freq.BodyAcc.std.X
* Freq.BodyAcc.std.Y
* Freq.BodyAcc.std.Z
* Freq.BodyAccJerk.mean.X
* Freq.BodyAccJerk.mean.Y
* Freq.BodyAccJerk.mean.Z
* Freq.BodyAccJerk.std.X
* Freq.BodyAccJerk.std.Y
* Freq.BodyAccJerk.std.Z
* Freq.BodyGyro.mean.X
* Freq.BodyGyro.mean.Y
* Freq.BodyGyro.mean.Z
* Freq.BodyGyro.std.X
* Freq.BodyGyro.std.Y
* Freq.BodyGyro.std.Z
* Freq.BodyAccMag.mean
* Freq.BodyAccMag.std
* Freq.BodyAccJerkMag.mean
* Freq.BodyAccJerkMag.std
* Freq.BodyGyroMag.mean
* Freq.BodyGyroMag.std
* Freq.BodyGyroJerkMag.mean
* Freq.BodyGyroJerkMag.std

## References
**[1]**: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

**[2]**: https://github.com/philippB-on-git/coursera_getting-and-cleaning-data_project/blob/master/README.md
