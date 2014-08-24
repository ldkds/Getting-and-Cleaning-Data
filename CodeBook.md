COOKBOOK - Coursera couse "Getting and Cleaning Data" 
========================

### activity.index and activity.name

activity.index   | activity.name
-----------------|------------
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING

### subject
An identifier of the subject who carried out the experiment, ranging from 1 to 30

### The rest of variables

The rest of the variables are measurements on the mean and standard deviation. They are shown below.
They are of the following form:
**prefix** **signal**-**measure**[-**dimension**]

* **prefix** 
  * "t" for time domain
  * "f" for frequency domain

* **signal** include:

Type              | Description
------------------|------------
BodyAcc          | Body acceleration
GravityAcc       | Gravitational acceleration 
BodyAccJerk      | Body acceleration jerk
BodyGyro         | Body gyro
BodyGyroJerk     | Body gyro jerk
BodyAccMag       | Magnitude of body accelaeration
GravityAccMag    | Magnitude of Gravitational acceleration
BodyAccJerkMag   | Magnitude of Body acceleration jerk
tBodyGyroMag      | Magnitude of Body gyro
tBodyGyroJerkMag  | Magnitude of Body gyro jerk

* **signal** include:

mean(): Mean value
std(): Standard deviation


tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()


## Disclaimers
Many parts of this cookbook are taken from the files provided in the raw dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
