#### Please refer to CodeBook.md and README.md in this repository for details on the 
#### data set and how to use this script.

### 1. merge training and test sets to create one data set
require(dplyr)

## read in feature names to add colnames to train/test data
features <- read.table("features.txt", colClasses="character") 
featNames <- features[,2]

setwd("train") 
train <- read.table("X_train.txt") ## read training data
trainLabs <- cbind(read.table("y_train.txt", col.names="activity_code"),
               read.table("subject_train.txt", col.names="subject"))

setwd("../test")
test <- read.table("X_test.txt") ## read test data
testLabs <- cbind(read.table("y_test.txt", col.names="activity_code"),
              read.table("subject_test.txt", col.names="subject"))

trainTest <- rbind(train, test) ## combine train/test data and apply feature names
colnames(trainTest) <- featNames

### 2. extract only the measurements on the mean and standard
### deviation for each measurement
x <- grep("mean|std", features[,2])
tidy1 <- trainTest[,x]

### 3. use descriptive activity names to name the activities in the data set
trainTestLabs <- rbind(trainLabs, testLabs)
tidy2 <- cbind(tidy1,trainTestLabs)
setwd("..")
activities <- read.table("activity_labels.txt", col.names=c("num", "activity_label"))
tidy2<- merge(tidy2, activities, by.x="activity_code", by.y="num")

### 4. appropriately label the data set with descriptive variable names
y <- names(tidy2)
y <- gsub("^t", "time", y)
y <- gsub("^f", "frequency", y)
y <- gsub("acc", "Acceleration", y, ignore.case=TRUE)
y <- gsub("mag", "Magnitude", y, ignore.case=TRUE)
y <- gsub("gyro", "Gyroscope", y, ignore.case=TRUE)
colnames(tidy2) <- y

### 5. from the data set in step 4, create a second, independent tidy data set
###    with the average of each variable for each activity and each subject
z <- select(tidy2, -activity_code, -activity_label, -subject)
tidy3 <- aggregate(z, by=list(subject=tidy2$subject, activity=tidy2$activity_label), 
                   mean)
write.table(tidy3, "tidyData.txt", row.names=FALSE)
