### Building features around numeric data for use in machine learning models
* Normalizing a data set to a unit length (range of [0,1]) {not remember}
* Removing outliers from a data set using quartile range selection
* Normalizing a data set using max norm
* Normalizing a data set using L1 norm
* Normalizing a data set using L2 norm

# Normalizing a data set to a unit length (range of [0,1])

### Understand
Q: What is true about normalizing a feature using min-max normalization?  
A: The data is normalized in a continuous range of [0, 1].  
D: The data is normalized in a continuous range of (0, 1].  
D: The normalized data differs in histogram when compared with the histogram of original data.  
D: The normalized data differs in scatter plot when compared with the scatter plot of original data.  

### Apply
Q: You have an array of values [5, 8, 9, 10, 12]. What is the value of element 12 when this data is normalized using min-max normalization?  
A: 1.0  
D: 0.0  
D: 0.5  
D: 0.8  

### Analyse
Q: You have an array with both positive and negative values given as [-2, 5, 8, 10, -12]. What is the value of element -2 when this data is normalized using min-max scaler?  
A: 0.45  
D: 0.77  
D: 0.0  
D: 1.0  

# Removing outliers from a data set using quartile range selection

### Remember
Q: What is the threshold value used in an inter-quartile range method to detect a positive outlier?  
A: Q3 + (1.5 x IQR)  
D: Q3 - (1.5 x IQR)  
D: Q1 + (1.5 x IQR)  
D: Q1 - (1.5 x IQR)  

### Understand
Q: What happens to the interquartile range (IQR), if the value of 75th percentile increases whereas the value of 25th percentile remains constant?  
A: The IQR value increases.  
D: The IQR value decreases.  
D: The IQR value remains constant.  
D: The IQR value changes randomly.  

### Apply
Q: You need to implement interquartile range method on a series data given as [53, 55, 51, 50, 60, 52]. What are the plausible outlier(s) in this series?  
A: Only 60.  
D: Only 55.  
D: 55 and 60.  
D: 53 and 55.

### Analyze
Q: While working on outlier detection, you arrived at the quartile values of a feature given as 25th:29, 50th:68 and 75th:130. What threshold needs to be set to detect lower outliers using quartile range method?  
A: -122.5  
D: -101  
D: -151.5  
D: -29  

# Normalizing a data set using max norm

### Remember
Q: What is the alternative name of max norm?  
A: L-infinity norm  
D: L0 norm  
D: L1 norm  
D: L2 norm  

### Understand
Q: What is true when max norm is used in neural network?  
A: The network doesn't explodes even if the learning rates are set too high.  
D: The network may explodes if the learning rates are set too low.  
D: The updates to the network are not bounded in a confined range.  
D: The updates to the network are bounded in a range [0, n_features].  

### Apply
Q: You need to apply a max normalization on an array of values [50, 60, 12, 83, 66, 5]. How can you achieve this task using Scikit-Learn?  
A: sklearn.preprocessing.normalize(array, norm='max')  
D: sklearn.preprocessing.MinMaxNormalization(array)  
D: sklearn.preprocessing.MaxNormalization(array)  
D: sklearn.preprocessing.SetNorm(array, method='max')  

### Analyse
Q: You have taken a sample from a feature given as [-6, 4, 2, 5]. What is the max norm of this sample?  
A: -6  
D: 5  
D: 4  
D: 2  

# Normalizing a data set using L1 norm

### Remember
Q: Which library has inbuilt method to implement L1 norm in python?  
A: NumPy and Scikit-Learn  
D: Pandas and Scikit-Learn  
D: Only NumPy  
D: Only Pandas  

### Understand
Q: What is true about L1 norm?  
A: L1 norm of x equals to the summation of the values of x, if x != 0.  
D: L1 norm of x equals to the square root of the summation of the values of x, if x != 0.  
D: ||alpha times x|| = ||alpha|| + ||x||  
D: ||x + y|| = ||x|| + ||y||, iff x and y are less than 0.    

### Apply
Q: You have a coordinate vector given as [4, 5]. What is the L1 norm of this vector?  
A: 9  
D: 1  
D: -9  
D: -1  

### Analyse
Q: You have a preprocessed Pandas dataframe with 500 quantitative features. How can you implement Lasso regression on this dataset including normalization?  
A: sklearn.linear_model.Lasso(normalize=True).fit(features)  
D: sklearn.linear_model.Lasso(normalize=True).fit_transform(features)  
D: sklearn.linear_model.L1().fit(features)  
D: sklearn.linear_model.L1(normalize=True).fit(features)  

# Normalizing a data set using L2 norm

### Remember
Q: How are the unimportant feature coefficients treated by L2 norm?   
A: They are set closer to zero with same polarity.  
D: They are set closer to zero with opposite polarity.  
D: They are merged together to form a new feature.  
D: They are set to zero leaving no traceback.  

### Understand
Q: What is true about the property of L2 norm?  
A: The length of a vector is always greater than 0, unless it is a zero vector.  
D: The length of a vector is always smaller than 0, unless it is a zero vector.  
D: The length of the scalar product of a vector is the length of the vector multiplied by the negative value of the scalar.  
D: The length of the scalar product of a vector is the length of the vector multiplied by the square root of the scalar.  

### Apply
Q: You have a coordinate system vector given as (3, -2, 1). What is the L2 norm of this vector?  
A: 3.74  
D: 2.44  
D: 1.41  
D: 4.64  

### Analyze
Q: 


