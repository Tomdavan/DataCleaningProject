

run_analysis.R is the script for making the tidy data set from the Samsung accelerometer study. The script:

1) loads eight files: X- test and train, y- test and train, subject- test and train, features (variable names) and the activity labels. 

2) merges X test and train, merges y test and train and merges subject test and train (fullxwide, fully and fullsubj).

3) selects those variable names that contain either "mean" or "std" and extracts those columns that corresponds to those variables (fullx).

4) convert activities as numbers to activity as labels, e.g. Walking, Standing, etc.

5) Binds the subject vector, activity labels vector and the fullx data set into a single data frame.

6) Takes the means by subject and activity (tidyfullx).

7) Outputs the tidy data set as tidydataset.txt.

