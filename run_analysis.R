library(plyr)
library(dplyr)
library(data.table)


#load eight data sets - X_test, X_train, y_test, y_train, subject_test, subject_train, activity_labels, features
xtest <- read.table("X_test.txt", header = FALSE)
ytest <- read.table("y_test.txt", header = FALSE)
xtrain <- read.table("X_train.txt", header = FALSE)
ytrain <- read.table("y_train.txt", header = FALSE)
subjtrain <- read.table("subject_train.txt", header = FALSE)
subjtest <- read.table("subject_test.txt", header = FALSE)
features <- read.table("features.txt", header = FALSE)
activitylabels <- read.table("activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)

# Merge the test and train data
fullxwide <- bind_rows(xtest, xtrain)
fully <- bind_rows(ytest, ytrain)
fullsubj <- bind_rows(subjtest, subjtrain)
names(fullsubj) <- "Subject"


# Select those columns that contain either mean or std in their names
varselect <- filter(features, grepl("mean|std", features[,2]))

fullx = select(fullxwide, varselect$V1)

#Use the activity labels in place of the numeric activity numbers. fully is a list class and needs to be converted 
# to an integer class using the dply package
indexfully <- laply(fully, function(x) x)
activity <- activitylabels[indexfully,2]
unique(activity)


#label the variables with the variable names from features
names(fullx) <- varselect$V2

#bind activity and subject to fullx
fullx <- cbind(fullsubj, activity, fullx)

# clean up the global environment
rm(activity, fullxwide, indexfully, varselect)

tidyfullx <- group_by(fullx, Subject, activity) %>% summarise_each(c("mean"))

write.table(tidyfullx, "tidydataset.txt", row.name = FALSE)
