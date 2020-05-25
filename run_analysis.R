library(readr)
library(dplyr)
library(stringr)

#renaming columns 
#export

# use location of this script as working directory
working.dir <- dirname(sys.frame(1)$ofile)
setwd(working.dir)

# check if data has already been downloaded and extracted
if (!dir.exists("UCI HAR Dataset")) {
    download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "data.zip")
    unzip("data.zip")
    file.remove("data.zip")
}

setwd("UCI HAR Dataset")

# read generic files
feature_names   <- read_table("features.txt", col_names = F)
activity_labels <- read_table("activity_labels.txt", col_names = F)


# read and merge files from test dataset
dat_test        <- read_table("test/X_test.txt", col_names = F)
subject_test    <- read_table("test/subject_test.txt", col_names = F)
activity_test   <- read_table("test/y_test.txt", col_names = F)

merge_test <- bind_cols(subject_test, activity_test, dat_test)
rm(list = c("subject_test", "activity_test", "dat_test"))   # free memory


# read and merge files from train dataset
dat_train       <- read_table("train/X_train.txt", col_names = F)
subject_train   <- read_table("train/subject_train.txt", col_names = F)
activity_train  <- read_table("train/y_train.txt", col_names = F)

merge_train <- bind_cols(subject_train, activity_train, dat_train)
rm(list = c("subject_train", "activity_train", "dat_train"))   # free memory


# merge train and test data, create column names
merge_all <- bind_rows(merge_test, merge_train)
rm(list = c("merge_test", "merge_train"))   # free memory
names(merge_all) <- c("subject_id", "activity_id", feature_names[[1]])
names(activity_labels) <- c("activity_id", "activity")


# join activity labels
merge_all <- left_join(merge_all, activity_labels, by = c("activity_id" = "activity_id"))


# create output dataset by selecting desired columns, mean/std columns keep original order
output <- merge_all %>% select(subject_id, activity, contains(c("mean(", "std("))) %>%
    select(subject_id, activity, str_sort(names(.)[-c(1,2)], numeric = T))
rm(merge_all)   # free memory


# rename columns with descriptive names
names(output) <- sub("^[0-9]{1,3} t", "Time.", names(output))
names(output) <- sub("^[0-9]{1,3} f", "Freq.", names(output))
names(output) <- sub("BodyBody", "Body", names(output))     # body occurs twice in some names
names(output) <- gsub("\\(|\\)", "", names(output))
names(output) <- gsub("-", ".", names(output))


# create summary dataset with averages of all variables grouped by subject_id, activity
output_summary  <- output %>% group_by(subject_id, activity) %>% summarize_all(mean)


# reset working directory to location of this script
setwd("../")


# export output and output_summary
# write.table(output, "merged_data.txt", row.names = F)  # export not needed for project
write.table(output_summary, "merged_data_summarized.txt", row.names = F, quote = F)