# Directory with the dataset
dir = "UCI HAR Dataset"
if(!file.exists(dir)){warning("Dataset missing")}

#See whether the files are there
#list.files(dir, recursive = TRUE)

###########################################################
# Read the dataset
# 1. Merges the training and the test sets to create one data set
###########################################################

# Read test data
X_test <- read.table(file.path(dir,"test","X_test.txt"))
y_test <- read.table(file.path(dir,"test","y_test.txt"))
subject_test <- read.table(file.path(dir,"test","subject_test.txt"))

# Read train data
X_train <- read.table(file.path(dir,"train","X_train.txt"))
y_train <- read.table(file.path(dir,"train","y_train.txt"))
subject_train <- read.table(file.path(dir,"train","subject_train.txt"))

# Add test and train dataset together
X <- rbind(X_test,X_train)
y <- rbind(y_test,y_train)
subject <- rbind(subject_test,subject_train)

colnames(y) <- "activity.index"
colnames(subject) <- "subject"

# Entire dataset (test set + training set)
data <- cbind(X,y,subject)

###########################################################
# 2. Extracts only the measurements on the mean and 
# standard deviation for each measurement. 
###########################################################

# Read the features, to know which variables are
# measurements on the mean and standard deviation
features <- read.table(file.path(dir,"features.txt"))
colnames(features) = c("feature.index", "feature.name")

# Select measurements on the mean and standard deviation
selected_features <- features[grep("mean\\(\\)|std\\(\\)",features$feature.name),]


# Select dataset related to selected_features only 
# (and also activity.index and subject)
# E.g. feature.index = 1 corresponds to "V1" column in
# the dataset data
feature_codes <- paste0("V",selected_features$feature.index)
data_selected <- data[c("activity.index","subject",feature_codes)]

###########################################################
# 3. Uses descriptive activity names to name the activities 
# in the data set
###########################################################

# Read activity labels
activity_labels <- read.table(file.path(dir,"activity_labels.txt"))
colnames(activity_labels) = c("activity.index", "activity.name")

#dim(activity_labels) # [1] 6 2
#dim(data_selected) # [1] 10299    68
# 66 measurements on the mean and std + 1 activity.index + 1 subject

# Now, we label the activities
data_labeled <- merge(activity_labels,data_selected, by="activity.index")
#dim(data_labeled) # [1] 10299    69
# 66 measurements on the mean and std + 1 activity.index + 1 subject + activity.name

########################################################
# 4. Appropriately labels the data set with descriptive 
# variable names. 
########################################################

# USe descriptive variable names: V1 -> tBodyAcc-mean()-X

# colnames(data_labeled) 
# "activity.index" "activity.name"  "subject"        "V1" ...
feature_names <- lapply(selected_features$feature.name, as.character)
names <- c("activity.index", "activity.name", "subject", feature_names)
# Replace by their descriptive names
colnames(data_labeled)  <- names

########################################################
# 5. Creates a second, independent tidy data set with 
# the average of each variable for each activity and 
# each subject. 
########################################################

# Will compute the average of variables that are not keys
keys <- c("activity.index","activity.name","subject")
col_selected <- !(colnames(data_labeled) %in% keys)
require(plyr)
# Compute the average of variables, grouped by activity.index, activity.name, subject
data_tidied <- ddply(data_labeled, .(activity.index, activity.name, subject), 
                     function(x) colMeans(x[col_selected]))

# Output the tidy dataset to a file
write.table(data_tidied, "tidy_dataset.txt",row.names = FALSE)

