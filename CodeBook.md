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
\<**prefix**\> \<**signal**\>-\<**measure**\>\[-**direction**\]

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

* **signal**

  * mean(): Mean value
  * std(): Standard deviation

* **direction**
  * "XYZ": 3-axial signals in the X, Y and Z directions.

## Disclaimers
Many parts of this cookbook are taken from the files provided in the raw dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
