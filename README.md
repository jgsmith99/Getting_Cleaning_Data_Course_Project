# Getting_Cleaning_Data_Course_Project
Getting &amp; Cleaning Data Course Project for Coursera Data Science Specialization

The data for this project represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:  
  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
  
Files in this repository should include this **Readme.md** file, a **Codebook.md** file which lists all the variables and data set names used through the project, a **run_analysis.R** script file which performs the data getting and cleaning, and an **avg_data.txt** file which is the final data set as listed in step 7 below.  

The run_analysis.R program does the following:  
1. Downloads and unzips the data set  
2. Reads in each data set  
3. Labels the data set with descriptive variable names  
4. Combines the test and train data into one data set  
5. Extracts only the measurements on the mean and standard deivation for each measurement  
6. Uses descriptive activity names to name the activies in the data set  
7. Creates a 2nd data set with the average of each variable for each activity and each subject  

The ending data sets are **sub_data_all_merge** and **avg_data**  
