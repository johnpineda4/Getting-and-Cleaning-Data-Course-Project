# Getting and Cleaning Data Course Project 


This course project is built upon the Codebook provided in: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Human Activity Recognition Using Smartphones Dataset
Version 1.0
 
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Universit?  degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Polit?cnica de Catalunya (BarcelonaTech). Vilanova i la Geltr? (08800), Spain activityrecognition '@' smartlab.ws 


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'firsttidydataset.txt': First tidy dataset merged from the training and test datasets.
      'train/X_train.txt', 'train/y_train.txt, 'train/subject_train.txt', 
      'test/X_test.txt', 'test/y_test.txt', 'test/subject_test.txt',
      'features.txt', 'activity_labels.txt'

- 'secondtidydataset.txt': Second tidy dataset for the average of each variable for each activity and each subject.

Final Project Output file : 'secondtidydataset.txt' contain the [1] subjectid, [2] activityid, [3] activityname or Activity Description, the measurements on the mean and standard deviation for each measurement, namely: 
 [4] "timebodyaccelerometer-mean()-x"                    
 [5] "timebodyaccelerometer-mean()-y"                    
 [6] "timebodyaccelerometer-mean()-z"                    
 [7] "timebodyaccelerometer-std()-x"                     
 [8] "timebodyaccelerometer-std()-y"                     
 [9] "timebodyaccelerometer-std()-z"                     
[10] "timegravityaccelerometer-mean()-x"                 
[11] "timegravityaccelerometer-mean()-y"                 
[12] "timegravityaccelerometer-mean()-z"                 
[13] "timegravityaccelerometer-std()-x"                  
[14] "timegravityaccelerometer-std()-y"                  
[15] "timegravityaccelerometer-std()-z"                  
[16] "timebodyaccelerometerjerk-mean()-x"                
[17] "timebodyaccelerometerjerk-mean()-y"                
[18] "timebodyaccelerometerjerk-mean()-z"                
[19] "timebodyaccelerometerjerk-std()-x"                 
[20] "timebodyaccelerometerjerk-std()-y"                 
[21] "timebodyaccelerometerjerk-std()-z"                 
[22] "timebodygyroscope-mean()-x"                        
[23] "timebodygyroscope-mean()-y"                        
[24] "timebodygyroscope-mean()-z"                        
[25] "timebodygyroscope-std()-x"                         
[26] "timebodygyroscope-std()-y"                         
[27] "timebodygyroscope-std()-z"                         
[28] "timebodygyroscopejerk-mean()-x"                    
[29] "timebodygyroscopejerk-mean()-y"                    
[30] "timebodygyroscopejerk-mean()-z"                    
[31] "timebodygyroscopejerk-std()-x"                     
[32] "timebodygyroscopejerk-std()-y"                     
[33] "timebodygyroscopejerk-std()-z"                     
[34] "timebodyaccelerometermagnitude-mean()"             
[35] "timebodyaccelerometermagnitude-std()"              
[36] "timegravityaccelerometermagnitude-mean()"          
[37] "timegravityaccelerometermagnitude-std()"           
[38] "timebodyaccelerometerjerkmagnitude-mean()"         
[39] "timebodyaccelerometerjerkmagnitude-std()"          
[40] "timebodygyroscopemagnitude-mean()"                 
[41] "timebodygyroscopemagnitude-std()"                  
[42] "timebodygyroscopejerkmagnitude-mean()"             
[43] "timebodygyroscopejerkmagnitude-std()"              
[44] "frequencybodyaccelerometer-mean()-x"               
[45] "frequencybodyaccelerometer-mean()-y"               
[46] "frequencybodyaccelerometer-mean()-z"               
[47] "frequencybodyaccelerometer-std()-x"                
[48] "frequencybodyaccelerometer-std()-y"                
[49] "frequencybodyaccelerometer-std()-z"                
[50] "frequencybodyaccelerometer-meanfreq()-x"           
[51] "frequencybodyaccelerometer-meanfreq()-y"           
[52] "frequencybodyaccelerometer-meanfreq()-z"           
[53] "frequencybodyaccelerometerjerk-mean()-x"           
[54] "frequencybodyaccelerometerjerk-mean()-y"           
[55] "frequencybodyaccelerometerjerk-mean()-z"           
[56] "frequencybodyaccelerometerjerk-std()-x"            
[57] "frequencybodyaccelerometerjerk-std()-y"            
[58] "frequencybodyaccelerometerjerk-std()-z"            
[59] "frequencybodyaccelerometerjerk-meanfreq()-x"       
[60] "frequencybodyaccelerometerjerk-meanfreq()-y"       
[61] "frequencybodyaccelerometerjerk-meanfreq()-z"       
[62] "frequencybodygyroscope-mean()-x"                   
[63] "frequencybodygyroscope-mean()-y"                   
[64] "frequencybodygyroscope-mean()-z"                   
[65] "frequencybodygyroscope-std()-x"                    
[66] "frequencybodygyroscope-std()-y"                    
[67] "frequencybodygyroscope-std()-z"                    
[68] "frequencybodygyroscope-meanfreq()-x"               
[69] "frequencybodygyroscope-meanfreq()-y"               
[70] "frequencybodygyroscope-meanfreq()-z"               
[71] "frequencybodyaccelerometermagnitude-mean()"        
[72] "frequencybodyaccelerometermagnitude-std()"         
[73] "frequencybodyaccelerometermagnitude-meanfreq()"    
[74] "frequencybodyaccelerometerjerkmagnitude-mean()"    
[75] "frequencybodyaccelerometerjerkmagnitude-std()"     
[76] "frequencybodyaccelerometerjerkmagnitude-meanfreq()"
[77] "frequencybodygyroscopemagnitude-mean()"            
[78] "frequencybodygyroscopemagnitude-std()"             
[79] "frequencybodygyroscopemagnitude-meanfreq()"        
[80] "frequencybodygyroscopejerkmagnitude-mean()"        
[81] "frequencybodygyroscopejerkmagnitude-std()"         
[82] "frequencybodygyroscopejerkmagnitude-meanfreq()"    
[83] "angle(tbodyaccelerometermean,gravity)"             
[84] "angle(tbodyaccelerometerjerkmean),gravitymean)"    
[85] "angle(tbodygyroscopemean,gravitymean)" 


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

For more information about this dataset please contact: activityrecognition '@' smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Other Related Publications:
===========================
[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz.  Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care.   Volume 19, Issue 9. May 2013

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

[4] Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Catal?. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.  
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita and Xavier Parra. November 2013.
