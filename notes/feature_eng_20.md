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
Q: 



