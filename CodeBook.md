---
title: "CodeBook.md"
output: html_document
---

The Purpose of this codebook is to describe:

- The Source Data
- The Variables
- The Transformations performed to derive the tidy dataset output by the function run_analysis.r

The Source Data used as the basis for this project is based on experiments performed using data collected from the accelerometers from the Samsung Galaxy S smartphone. 

Source Data can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and in comprised of a series of files

The Data is broken out into several groups of files:

- Master Data
      - Activity Labels
      - Subject Data
      - Variable Names
- Training Data
      - X Co-ordinate Data (Test Results)
      - Y Co-ordinate Data (Activity Identifier)
- Testing Data
      - X Co-ordinate Data (Test Results)
      - Y Co-ordinate Data (Activity Identifier)


Attribute Information:

- The Dataset consists of:
      - A 561 time and frequency domain variables.
            - Of the 561 variables only the measurements on the mean and standard deviation were required in the final output
      - For 6 Activities
      - Performed by 30 participants
      
Transformations:

- The following transformations were applied to the source data to create the final tidy data set
      - Training and Test data for X Co-ordinate unioned together
      - Training and Test data for Y Co-ordinate unioned together
      - Subject Training and Test Data unioned together
      - Provide a Friendly name to the first Column of the Unioned Subject dataset ("subject")
      - Load the activity labels into dataset
      - Factorize the first column of y data set
      - Set the Levels of the new factor to the second column of the activity labels dataset
      - coerce the y data factor back to a data frame
      - Provide a Freindly name to the first column of the Y data set ("activity")
      - The 3 unioned data sets column bound togther
      - Subject + y_Data + x_Data
      - Variable names assigned to the merged data set from the variable name dataset
      - Mean and Std Deviation variables  identfied from variable names dataset
      - Merged Data subset to include only the Mean and Std Deviation variables 
      - Update variable names to provide more meaningful names
      
            - replace t at beginning of Variable with Time
            - replace f with Frequency
            - replace gyro with gyroscope
            - replace acc with accelerometer
            - replace mag with magnitude
            - replace bodybody with body
            - remove brackets
            - replace std with stDev

Final Output
      
- Group by subject and activity
- Summarise the mean for each varible by subject and activity
- Write the data to a file called tidydata.txt in working directory without row numbers
      
      

