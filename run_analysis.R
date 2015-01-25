run_analysis <- function() {
    
    ## Name:    run_analysis.R
    ## Purpose: Tidy up and calculate means of data
    ## Author:  Aric Rosenbaum
    
    ## Clean up
    rm(list=ls())
    
    ## Load features (only care about 2nd col)
    features <- read.table("features.txt")
    features <- features[, 2]
    
    ## Clean up column names
    features <- gsub("^t", "time", features)
    features <- gsub("^f", "freq", features)
    features <- gsub("BodyBody", "Bod", features)
    
    ## Build vector of column names with either "mean" or "std" in name
    features_vector <- grepl("-mean\\(\\)|-std\\(\\)", features)
    
    ## Load activities (only care about 2nd col)
    activities <- read.table("activity_labels.txt")
    colnames(activities) <- c("activityID", "activity")
    
    ## Load test data sets
    test.data <- read.table("test\\X_test.txt")
    test.subject <- read.table("test\\subject_test.txt")
    colnames(test.subject) <- c("subjectID")
    test.activity <- read.table("test\\y_test.txt")
    colnames(test.activity) <- c("activityID")
    
    ## Load train data sets
    train.data <- read.table("train\\X_train.txt")
    train.subject <- read.table("train\\subject_train.txt")
    colnames(train.subject) <- c("subjectID")
    train.activity <- read.table("train\\y_train.txt")
    colnames(train.activity) <- c("activityID")
    
    ## set column names
    colnames(test.data) <- features
    colnames(train.data) <- features
    
    ## Combine
    test.all <- cbind(test.data, subject = test.subject, activityID = test.activity, origin = "test")
    train.all <- cbind(train.data, subject = train.subject, activityID = train.activity, origin = "train")
    data.all <- rbind(test.all, train.all)
    
    ## Subset of data with 
    data.subset <- data.all[features_vector]
    
    ## Perform merge with activites to get activity name
    data.subset <- merge(data.subset, activities, by.x="activityID", by.y="activityID", all=TRUE)
    
    ## Remove un-needed cols
    data.subset <- data.subset[, colnames(data.subset) != "activityID"]
    data.subset <- data.subset[, colnames(data.subset) != "origin"]
    
    ## Reshape
    data.melt <- melt(data.subset, id = c("activity", "subjectID"))
    data.tidy <- dcast(data.melt, activity + subjectID ~ variable, mean)
    
    ## Write data
    write.table(data.tidy, "run_analysis.txt", row.name = FALSE)
    
}
