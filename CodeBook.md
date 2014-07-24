Original data comes from the UCI Human Activity Recognition Using Smartphones Dataset [1] collected from the accelerometers from the Samsung Galaxy S smartphone.

Raw data is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  This file also contains a ReadMe.txt outlining the raw data and and feature_info.txt for feature selection.  

**Study Design**

Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  Please see source (from above) README.txt for more details.  


**Tidy Data**

TidyData.txt contains the average of each variable in the raw data set pertaining to measurements on the mean and standard deviation, for each activity and each subject.  The tidy data has been saved using write.table, with row numbers surpressed.  Variable naming has been processed to be more human-friendly.  

**Variables**

TidyData.txt contains the following variables (see above feature_info.txt for original variable naming and description):

activityname - the activity label (one of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

subject - the subject number (1-30)

The remaining variables are the average of each variable in the raw data set pertaining to measurements on the mean and standard deviation.  Time domain signal variables start with the word time, and frequency domain signal variables start with word frequency.  Dashes and parantheses have been removed, and variables related to standard deviation (originally std) have been renamed to include standarddeviation.  Lastly all variables are lower cased.  

  
  timebodyaccmeanx  
  
  
  timebodyaccmeany  
   
  
  timebodyaccmeanz  
   
  
  timebodyaccstandarddeviationx  
   
  
  timebodyaccstandarddeviationy  
    
  
  timebodyaccstandarddeviationz  
   
  
  timegravityaccmeanx  
   
  
  timegravityaccmeany  
   
  
  timegravityaccmeanz  
   
  
  timegravityaccstandarddeviationx  
   
  
  timegravityaccstandarddeviationy  
  
  
  timegravityaccstandarddeviationz  
   
  
  timebodyaccjerkmeanx  
   
  
  timebodyaccjerkmeany  
  
  
  timebodyaccjerkmeanz  
   
  
  timebodyaccjerkstandarddeviationx  
  
  
  timebodyaccjerkstandarddeviationy  
   
  
  timebodyaccjerkstandarddeviationz  
   
  
  timebodygyromeanx  
     
  timebodygyromeany  
   
  
  timebodygyromeanz  
  
  
  timebodygyrostandarddeviationx  
  
  
  timebodygyrostandarddeviationy  
  
  
  timebodygyrostandarddeviationz  
  
  
  timebodygyrojerkmeanx  
   
  
  timebodygyrojerkmeany  
   
  
  timebodygyrojerkmeanz  
   
  
  timebodygyrojerkstandarddeviationx  
   
  
  timebodygyrojerkstandarddeviationy  
   
  
  timebodygyrojerkstandarddeviationz  
   
  
  timebodyaccmagmean  
  
  
  timebodyaccmagstandarddeviation  
   
  
  timegravityaccmagmean  
   
  
  timegravityaccmagstandarddeviation  
   
  
  timebodyaccjerkmagmean  
   
  
  timebodyaccjerkmagstandarddeviation  
   
  
  timebodygyromagmean  
   
  
  timebodygyromagstandarddeviation  
  
  
  timebodygyrojerkmagmean  
   
  
  timebodygyrojerkmagstandarddeviation  
  
  
  frequencybodyaccmeanx  
  
  
  frequencybodyaccmeany  
   
  
  frequencybodyaccmeanz  
   
  
  frequencybodyaccstandarddeviationx  
   
  
  frequencybodyaccstandarddeviationy  
   
  
  frequencybodyaccstandarddeviationz  
   
  
  frequencybodyaccmeanfreqx  
   
  
  frequencybodyaccmeanfreqy  
  
  
  frequencybodyaccmeanfreqz  
   
  
  frequencybodyaccjerkmeanx  
   
  
  frequencybodyaccjerkmeany  
   
  
  frequencybodyaccjerkmeanz  
   
  
  frequencybodyaccjerkstandarddeviationx  
  
  
  frequencybodyaccjerkstandarddeviationy  
   
  
  frequencybodyaccjerkstandarddeviationz  
   
  
  frequencybodyaccjerkmeanfreqx  
   
  
  frequencybodyaccjerkmeanfreqy  
   
  
  frequencybodyaccjerkmeanfreqz  
   
  
  frequencybodygyromeanx  
   
  
  frequencybodygyromeany  
  
  
  frequencybodygyromeanz  
   
  
  frequencybodygyrostandarddeviationx  
   
  
  frequencybodygyrostandarddeviationy  
  
  
  frequencybodygyrostandarddeviationz  
  
  
  frequencybodygyromeanfreqx  
   
  
  frequencybodygyromeanfreqy  
   
  
  frequencybodygyromeanfreqz  
  
  
  frequencybodyaccmagmean  
   
  
  frequencybodyaccmagstandarddeviation  
   
  
  frequencybodyaccmagmeanfreq  
   
  
  frequencybodybodyaccjerkmagmean  
   
  
  frequencybodybodyaccjerkmagstandarddeviation  
   
  
  frequencybodybodyaccjerkmagmeanfreq  
   
  
  frequencybodybodygyromagmean  
  
  
  frequencybodybodygyromagstandarddeviation  
   
  
  frequencybodybodygyromagmeanfreq  
   
  
  frequencybodybodygyrojerkmagmean  
   
  
  frequencybodybodygyrojerkmagstandarddeviation  
  
  
  frequencybodybodygyrojerkmagmeanfreq  
  

 



*[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012*

