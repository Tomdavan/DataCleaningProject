This is a code book for the tidy data set, called tidydataset, generated from the Samsung Galaxy S Smartphone accelerometer study. This code book is an update to the README, features_info, features and web page, http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, that came with the original data set. This code book does not reproduce the information in those sources. The tidy data set merged the train and test sets for the X, y and subject data into a single file. The changes from the original data into the tidy data included the merging of the original data, the selection of those columns containing "mean" or "std" in their features name, labeling the activities (change from numeric to descriptive), renaming the variables V1 - V79 with their features names and binding the subject id vector, activity vector and variable matrix into a single data frame. The final step in the conversion was calculation of the mean for each of 79 variables by subject and activity. The final data has dimension 180 x 81. Column 1 is the activity list, column 2 is the subject list and columns 3 through 79 are the values of the means for the 30 subjects at each of the six activities.  

The accelerometer data for the Samsung study was collected in the time domain in units of standard gravity.  Angular velocity in radians per second was measured also. Both were collected at 50 data points per second. This data was filtered and transformed (see details in original sources). These variables were further transformed into frequency domain variables through a Fast Fourier Transfrom. Both time domain (t) and frequency domain variables (f) were included in the data set. Units for accel is standard gravity, for gyro is radians per second and freq are Hz. Variables in columns 3 through 81 are numeric. The variables in the tidy data set are:

Column	Variable_Name
3:5 	  	tBodyAcc-mean()-X, Y, Z
6:8 	  	tBodyAcc-std()-X, Y, Z
9:11 	  	tGravityAcc-mean()-X, Y, Z
12:14 	tGravityAcc-std()-X, Y, Z
15:17 	tBodyAccJerk-mean()-X, Y, Z
18:20 	tBodyAccJerk-std()-X, Y, Z
21:23 	tBodyGyro-mean()-X, Y, Z
24:26 	tBodyGyro-std()-X, Y, Z
27:29 	tBodyGyroJerk-mean()-X, Y, Z
30:32 	tBodyGyroJerk-std()-X, Y, Z
33:34	  	tBodyAccMag-mean(), -std()
35:36 	tGravityAccMag-mean(), -std()
37:38 	tBodyAccJerkMag-mean(), -std()
39:40 	tBodyGyroMag-mean(), -std()
41:42 	tBodyGyroJerkMag-mean(), -std()
43:45 	fBodyAcc-mean()-X, Y, Z
46:48 	fBodyAcc-std()-X, Y, Z
49:51 	fBodyAcc-meanFreq()-X, Y, Z
52:54 	fBodyAccJerk-mean()-X, Y, Z
55:57 	fBodyAccJerk-std()-X, Y, Z
58:60 	fBodyAccJerk-meanFreq()-X, Y, Z
61:63 	fBodyGyro-mean()-X, Y, Z
64:66 	fBodyGyro-std()-X,Y, Z
67:69 	fBodyGyro-meanFreq()-X, Y, Z
70:71 	fBodyAccMag-mean(), -std()
72 	    	fBodyAccMag-meanFreq()
73:74 	fBodyBodyAccJerkMag-mean(), -std()
75 	    	fBodyBodyAccJerkMag-meanFreq()
76:77 	fBodyBodyGyroMag-mean(), -std()
78    	fBodyBodyGyroMag-meanFreq()
79:80 	fBodyBodyGyroJerkMag-mean(), -std()
81 	    	fBodyBodyGyroJerkMag-meanFreq()
 


