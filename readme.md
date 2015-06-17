---
title: "readme"
output: html_document
---
In order to execute the run_analysis.r script you will require the dplyr package installed

- to install dplyr run the following script within r
      - install.packages("dplyr")
      
Prior to running the script ensure that you have download and extracted the following file to your working directory

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The Script will generate a file called tidydata.txt in your working directory when complete
with the following variables

- subject
- activity
- TimeBodyAccelerometer-mean-X
- TimeBodyAccelerometer-mean-Y
- TimeBodyAccelerometer-mean-Z
- TimeBodyAccelerometer-stDev-X
- TimeBodyAccelerometer-stDev-Y
- TimeBodyAccelerometer-stDev-Z
- TimeGravityAccelerometer-mean-X
- TimeGravityAccelerometer-mean-Y
- TimeGravityAccelerometer-mean-Z
- TimeGravityAccelerometer-stDev-X
- TimeGravityAccelerometer-stDev-Y
- TimeGravityAccelerometer-stDev-Z
- TimeBodyAccelerometerJerk-mean-X
- TimeBodyAccelerometerJerk-mean-Y
- TimeBodyAccelerometerJerk-mean-Z
- TimeBodyAccelerometerJerk-stDev-X
- TimeBodyAccelerometerJerk-stDev-Y
- TimeBodyAccelerometerJerk-stDev-Z
- TimeBodyGyroscope-mean-X
- TimeBodyGyroscope-mean-Y
- TimeBodyGyroscope-mean-Z
- TimeBodyGyroscope-stDev-X
- TimeBodyGyroscope-stDev-Y
- TimeBodyGyroscope-stDev-Z
- TimeBodyGyroscopeJerk-mean-X
- TimeBodyGyroscopeJerk-mean-Y
- TimeBodyGyroscopeJerk-mean-Z
- TimeBodyGyroscopeJerk-stDev-X
- TimeBodyGyroscopeJerk-stDev-Y
- TimeBodyGyroscopeJerk-stDev-Z
- TimeBodyAccelerometerMagnitude-mean
- TimeBodyAccelerometerMagnitude-stDev
- TimeGravityAccelerometerMagnitude-mean
- TimeGravityAccelerometerMagnitude-stDev
- TimeBodyAccelerometerJerkMagnitude-mean
- TimeBodyAccelerometerJerkMagnitude-stDev
- TimeBodyGyroscopeMagnitude-mean
- TimeBodyGyroscopeMagnitude-stDev
- TimeBodyGyroscopeJerkMagnitude-mean
- TimeBodyGyroscopeJerkMagnitude-stDev
- FrequencyBodyAccelerometer-mean-X
- FrequencyBodyAccelerometer-mean-Y
- FrequencyBodyAccelerometer-mean-Z
- FrequencyBodyAccelerometer-stDev-X
- FrequencyBodyAccelerometer-stDev-Y
- FrequencyBodyAccelerometer-stDev-Z
- FrequencyBodyAccelerometerJerk-mean-X
- FrequencyBodyAccelerometerJerk-mean-Y
- FrequencyBodyAccelerometerJerk-mean-Z
- FrequencyBodyAccelerometerJerk-stDev-X
- FrequencyBodyAccelerometerJerk-stDev-Y
- FrequencyBodyAccelerometerJerk-stDev-Z
- FrequencyBodyGyroscope-mean-X
- FrequencyBodyGyroscope-mean-Y
- FrequencyBodyGyroscope-mean-Z
- FrequencyBodyGyroscope-stDev-X
- FrequencyBodyGyroscope-stDev-Y
- FrequencyBodyGyroscope-stDev-Z
- FrequencyBodyAccelerometerMagnitude-mean
- FrequencyBodyAccelerometerMagnitude-stDev
- FrequencyBodyAccelerometerJerkMagnitude-mean
- FrequencyBodyAccelerometerJerkMagnitude-stDev
- FrequencyBodyGyroscopeMagnitude-mean
- FrequencyBodyGyroscopeMagnitude-stDev
- FrequencyBodyGyroscopeJerkMagnitude-mean
- FrequencyBodyGyroscopeJerkMagnitude-stDev- 