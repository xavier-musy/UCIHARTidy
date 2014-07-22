## run_analysis function will create a tidy data set from wearable computing data found:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## The function will look for ./data/UCI HAR Dataset, and download and unzip the data if the directory is not found from
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## The tidy data set will be created as TidyData.txt, in the Data folder

run_analysis <- function() {
 
  dataDir = "./data/UCI HAR Dataset"
  
  ## make sure we have data dir or download and unzip
  if (!file.exists(dataDir)){
    dir.create(dataDir)
    message("downloading data...")
    fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    temp <- tempfile()
    download.file(fileUrl,temp, method="curl")
    message("unzipping data...")
    unzip(temp, exdir="./data")
    unlink(temp)
  }

  trainFileRoot <- "./data/UCI HAR Dataset/train/"
  testFileRoot <- "./data/UCI HAR Dataset/test/"
  
  ## read training data
  message("reading training data...")
  x_train <- read.table(paste0(trainFileRoot,"X_train.txt"), header = FALSE)
  y_train <- read.table(paste0(trainFileRoot, "y_train.txt"), header = FALSE)
  subject_train <- read.table(paste0(trainFileRoot,"subject_train.txt"), header = FALSE) 
  
  ## read test data
  message("reading test data...")
  x_test <- read.table(paste0(testFileRoot,"X_test.txt"), header = FALSE)
  y_test <- read.table(paste0(testFileRoot, "y_test.txt"), header = FALSE)
  subject_test <- read.table(paste0(testFileRoot,"subject_test.txt"), header = FALSE) 
  
  ## merge train & test data
  message("merging test and training data...")
  x <- rbind(x_train, x_test)
  y <- rbind(y_train, y_test)
  subject <- rbind(subject_train, subject_test)
  data <- cbind(subject, y, x)
  
  ## label columns more appropriately & merge activity name in
  features <- read.table(paste0(dataDir, "/features.txt"), header = FALSE, stringsAsFactors=FALSE)
  activity_names <- read.table(paste0(dataDir, "/activity_labels.txt"), header = FALSE, stringsAsFactors=FALSE)
  names(data) <- c("subject", "activity",features[,2])
  names(activity_names) <- c("activity","activityname")
  library(reshape2)
  tidyData <- merge(data, activity_names, by.x = "activity", by.y = "activity")
  
  ## filter to column names that deal with mean or std, and keep a few others
  filter <- grep("mean|std", names(tidyData))
  subTidyData <- tidyData[,c(which(names(tidyData)=="subject"), 
                                     which(names(tidyData)=="activityname"), filter)]
  
  ## do some column naming cleanup
  names(subTidyData) <- tolower(names(subTidyData)) #make lower case
  names(subTidyData) <- gsub("\\(\\)", "", names(subTidyData)) #get rid of parans
  names(subTidyData) <- gsub("-", "", names(subTidyData)) #get rid of dashes
  names(subTidyData) <- gsub("std", "standarddeviation", names(subTidyData)) #spell out a bit more
  names(subTidyData) <-sub("^f", "frequency", names(subTidyData)) #spell out columns starting with frequency
  names(subTidyData) <- sub("^t", "time", names(subTidyData)) #spell out columns starting with time
  
  ## get mean of each variable, by subject and activity name
  tidyDataMelt <- melt(subTidyData, id=c("subject","activityname"))
  tidyDataMean <- dcast(tidyDataMelt, activityname + subject ~ variable, mean)
  
  ## save tidy average data
  message("saving tidy average data...")
  write.table(tidyDataMean, file="./data/TidyData.txt", row.names=FALSE)
  
}


