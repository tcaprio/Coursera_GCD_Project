==================================================================
ORIGINAL data set feature selection ***(Tidy follows below)***
==================================================================

-----------From 'features_info.txt' in Samsung data set-----------

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

--- End of excerpt from 'features_info.txt' in Samsung data set---


==================================================================
TIDY data set feature selection
==================================================================

The tidy data produced by run_analysis.R includes only measurements on mean and standard deviation (std) from the original data set. Variable/feature names have been added to identify each measurement. Subject identifiers have been added to identify each subject from which the measurements were taken. Activity identifiers and labels have been added to identify to which activity the measurements apply. The tidy data set indicates the mean of observations of each variable for each activity and each subject. 

Variable names have been modified from their originals to replace abbreviations with meaningful descriptions and are as follows:
==================================================================

timeBodyAcceleration-mean()-X
timeBodyAcceleration-mean()-Y
timeBodyAcceleration-mean()-Z
timeBodyAcceleration-std()-X
timeBodyAcceleration-std()-Y
timeBodyAcceleration-std()-Z
timeGravityAcceleration-mean()-X
timeGravityAcceleration-mean()-Y
timeGravityAcceleration-mean()-Z
timeGravityAcceleration-std()-X
timeGravityAcceleration-std()-Y
timeGravityAcceleration-std()-Z
timeBodyAccelerationJerk-mean()-X
timeBodyAccelerationJerk-mean()-Y
timeBodyAccelerationJerk-mean()-Z
timeBodyAccelerationJerk-std()-X
timeBodyAccelerationJerk-std()-Y
timeBodyAccelerationJerk-std()-Z
timeBodyGyroscope-mean()-X
timeBodyGyroscope-mean()-Y
timeBodyGyroscope-mean()-Z
timeBodyGyroscope-std()-X
timeBodyGyroscope-std()-Y
timeBodyGyroscope-std()-Z
timeBodyGyroscopeJerk-mean()-X
timeBodyGyroscopeJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z
timeBodyGyroscopeJerk-std()-X
timeBodyGyroscopeJerk-std()-Y
timeBodyGyroscopeJerk-std()-Z
timeBodyAccelerationMagnitude-mean()
timeBodyAccelerationMagnitude-std()
timeGravityAccelerationMagnitude-mean()
timeGravityAccelerationMagnitude-std()
timeBodyAccelerationJerkMagnitude-mean()
timeBodyAccelerationJerkMagnitude-std()
timeBodyGyroscopeMagnitude-mean()
timeBodyGyroscopeMagnitude-std()
timeBodyGyroscopeJerkMagnitude-mean()
timeBodyGyroscopeJerkMagnitude-std()
frequencyBodyAcceleration-mean()-X
frequencyBodyAcceleration-mean()-Y
frequencyBodyAcceleration-mean()-Z
frequencyBodyAcceleration-std()-X
frequencyBodyAcceleration-std()-Y
frequencyBodyAcceleration-std()-Z
frequencyBodyAcceleration-meanFreq()-X
frequencyBodyAcceleration-meanFreq()-Y
frequencyBodyAcceleration-meanFreq()-Z
frequencyBodyAccelerationJerk-mean()-X
frequencyBodyAccelerationJerk-mean()-Y
frequencyBodyAccelerationJerk-mean()-Z
frequencyBodyAccelerationJerk-std()-X
frequencyBodyAccelerationJerk-std()-Y
frequencyBodyAccelerationJerk-std()-Z
frequencyBodyAccelerationJerk-meanFreq()-X
frequencyBodyAccelerationJerk-meanFreq()-Y
frequencyBodyAccelerationJerk-meanFreq()-Z
frequencyBodyGyroscope-mean()-X
frequencyBodyGyroscope-mean()-Y
frequencyBodyGyroscope-mean()-Z
frequencyBodyGyroscope-std()-X
frequencyBodyGyroscope-std()-Y
frequencyBodyGyroscope-std()-Z
frequencyBodyGyroscope-meanFreq()-X
frequencyBodyGyroscope-meanFreq()-Y
frequencyBodyGyroscope-meanFreq()-Z
frequencyBodyAccelerationMagnitude-mean()
frequencyBodyAccelerationMagnitude-std()
frequencyBodyAccelerationMagnitude-meanFreq()
frequencyBodyBodyAccelerationJerkMagnitude-mean()
frequencyBodyBodyAccelerationJerkMagnitude-std()
frequencyBodyBodyAccelerationJerkMagnitude-meanFreq()
frequencyBodyBodyGyroscopeMagnitude-mean()
frequencyBodyBodyGyroscopeMagnitude-std()
frequencyBodyBodyGyroscopeMagnitude-meanFreq()
frequencyBodyBodyGyroscopeJerkMagnitude-mean()
frequencyBodyBodyGyroscopeJerkMagnitude-std()
frequencyBodyBodyGyroscopeJerkMagnitude-meanFreq()