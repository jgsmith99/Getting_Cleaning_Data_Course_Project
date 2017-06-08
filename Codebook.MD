---
title: "Codebook"
output: html_document
---

Codebook of all the Data and Values used in run_analysis.R

### Resulting Data Sets
Name                    | Note
--------------------    | -------------------
**sub_data_all_merge**  | tidy data set which merges test and train data, subsets only measurements on mean and standard deviation, and uses descriptive activity names and variable names   
**avg_data**            | tidy data set with the average of each variable for each activity and each subject   

### Data
Name                    | Note
--------------------    | -------------------
**activity_labels**     | part of the downloaded data set. Relates activity code to an activity  
**avg_data**            | tidy data set with the average of each variable for each activity and each subject   
**data_all**            | combined data set, test & train   
**features**            | part of the downloaded data set. Used for the column names of the data   
**sub_data_all**        | a subset of data_all containing only the columns with mean or standard deviations   
**sub_data_all_merge**  | adds a descriptive column for activity to sub_data_all   
**subject_test**        | part of the downloaded data set. Gives subject for each test observation  
**subject_train**       | part of the downloaded data set. Gives subject for each train observation  
**test_all**            | combines subject_test, y_test, and X_test  
**train_all**           | combines subject_train, y_train, and X_train  
**X_test**              | part of the downloaded data set.   
**X_train**             | part of the downloaded data set.   
**y_test**              | part of the downloaded data set. Activity code for each test observation  
**y_train** | part of the downloaded data set. Activity code for each train observation  

### Variables
Name | Note
---- | ----
**extract1** | column numbers that include mean or std in their name. Used to subset to sub_data_all.  
**fileUrl** | location of dataset to download.  

