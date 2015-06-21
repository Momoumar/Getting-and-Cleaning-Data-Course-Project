#The code book

Information about the variables (including units!) in the data set not contained in the tidy data
Information about the summary choices you made
Information about the experimental study design you used



## Information about the data
- Data Set Characteristics: Multivariate, Time-Series

- Number of Instances: 10299

- Area: Computer

- Attribute Characteristics: N/A

- Number of Attributes: 561

- Date Donated: 2012-12-10

- Associated Tasks: Classification, Clustering

- Missing Values?: N/A

- Number of Web Hits: 196848

(Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Experimental study design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

(Source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)




## Information about the variables


Subject : [1-30]
          identifies who performed the activity for each window sample. Its range is from 1 to 30.

Activity: [1-6]
          The different activities the subject were performing.
          1 WALKING
          2 WALKING_UPSTAIRS
          3 WALKING_DOWNSTAIRS
          4 SITTING
          5 STANDING
          6 LAYING

### Unit of measurement
- The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
- The body acceleration signal obtained by subtracting the gravity from the total acceleration in standard gravity units'g'.
- The angular velocity vector measured by the gyroscope . The units are radians/second.


##Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy.
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws
