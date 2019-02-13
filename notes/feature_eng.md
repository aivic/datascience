### Building features around numeric data for use in machine learning models
* Scaling a data set using min/max scaling
* Scaling a data set using maxabs scaling
* Quantizing (or bin) large-scale counts and values
* Compensating for large scales with log transformations
* Compensating for large scales with power transformations

### Building features around nominal data for use in machine learning models
* Converting nominal data to ordinal data for use in machine learning algorithms
* Transposing categories to integers using label encoding
* Binarizing categories with one-hot encoding
* Reviewing common modeling problems encountered with one-hot encoding
* Compensating for one-hot limitations using a dummy coding
* Compensating for one-hot limitations using an effect coding
* Transposing categories to integers using bin counting
* Hashing a nominal feature into a numeric feature

---

# Scaling a data set using min/max scaling

### Remember
Q: What is the denominator term of a min-max scalar?  
A: maximum_value - minimum_value  
D: maximum_value + minimum_value  
D: maximum_value  
D: minimum_value  

### Understand
Q: What is true about min-max scalar method available inside Scikit-Learn package?  
A: The range of output values can be passed as an argument to the method.  
D: The range of output values can be altered within a range of 0 to 1.  
D: The method follows a strict range of values spanning from 0 to 1.  
D: The method follows a strict range of values spanning from -1 to 1.  

### Apply
Q: You need to implement a nearest neighbor classifier on a dataset whose features need to scaled. How can you implement MinMaxScalar method to achieve this task?  
A: sklearn.preprocessing.MinMaxScaler().fit_transform(features)  
D: sklearn.preprocessing.MinMaxScaler().fit_(features)  
D: sklearn.preprocessing.MinMaxScaler().fit(features)  
D: sklearn.preprocessing.MinMaxScaler().transform(features)  

### Analyze
Q: You need to implement min-max scalar on a vector with 7 elements given as {20, 6, 4, 10, 18, 2, 1}. What is the scaled value corresponding to element 4?  
A: 0.157  
D: 0.211  
D: 0.200  
D: 1.000  

# Scaling a data set using maxabs scaling

### Remember
Q: What is the numerator term of the maxabs scaler, when applied on element e1 from a set "E" with values {e1, e2, e3, e4, e5}?  
A: e1  
D: -e1  
D: |e1|  
D: e1 - maximum of E  

### Understand
Q: What is true about maxabs scalar?  
A: It does not shift the data.  
D: It changes the polarity of data.  
D: It can destroy any sparsity present in data.  
D: It cannot be applied to sparse CSR matrices.  

### Apply
Q: You have a dataset with multiple quantitative features. How can you scale the dataset features such that the scalar does not center the data?  
A: sklearn.preprocessing.MaxAbsScaler().fit_transform(features)  
D: sklearn.preprocessing.MinAbsScaler().fit_(features)  
D: sklearn.preprocessing.MinMaxNorm().fit_(features)  
D: sklearn.preprocessing.MaxNorm().fit_transform(features)  

### Analyze
Q: You have a matrix X, given as [[ 1., -1.,  2.], [ 2.,  0.,  0.], [ 0.,  1., -1.]]. What is the output of X after scaling it with maxabs scalar?  
A: [[ 0.5, -1. ,  1. ], [ 1. ,  0. ,  0. ], [ 0. ,  1. , -0.5]]  
D: [[ -0.5, -2. ,  1.5 ], [ 0. ,  -1. ,  -1. ], [ -1. ,  0. , -1.5]]  
D: [[ 0.5, -0.5 ,  1. ], [ 1. ,  0. ,  0. ], [ 0. ,  1. , -1.]]  
D: [[ 0.5, -0.5 ,  1. ], [ 1. ,  0. ,  0. ], [ 0. ,  1. , -0.5]]  

# Quantizing (or bin) large-scale counts and values  

### Remember
Q: What may result when linear models are preprocessed with discretization?  
A: Introduction of nonlinearity in the model.  
D: Introduction of outliers in the model.  
D: Creation of a high-sparse dataset.  
D: Creation of a denser dataset.  

### Understand
Q: What happens when quantization of large-scale data is performed?  
A: It transforms the continuous data to the nominal data.  
D: It transforms the continuous data to the binary data.  
D: It transforms the nominal data to the continuous data.  
D: It transforms the discrete data to the continuous data.  

### Apply
Q: You have a square matrix of size 3x3 given as [[ -3., 5., 15 ], [  0., 6., 14 ], [  6., 3., 11 ]]. How can you perform the quantization on the matrix resulting into an array of {3, 2, 2} bins?  
A: sklearn.preprocessing.KBinsDiscretizer(n_bins=[3, 2, 2]).fit_transform(matrix)  
D: sklearn.preprocessing.KDiscretizer(n_bins={3, 2, 2}).fit_transform(matrix)  
D: sklearn.preprocessing.Discretizer(n_bins={3, 2, 2}).fit_transform(matrix)  
D: sklearn.preprocessing.NBinsDiscretizer(n_bins=[3, 2, 2]).fit_transform(matrix)  

### Analyze
Q: You need to threshold the numerical features of a dataset given as [[ 1., -1.,  2.], [ 2.,  0.,  0.], [ 0.,  1., -1.]] to boolean values [[1., 0., 1.], [1., 0., 0.], [0., 1., 0.]]. How can you perform it using the discretization process?  
A: sklearn.preprocessing.Binarizer().fit_transform(features)  
D: sklearn.preprocessing.Quantizer().fit_transform(features)  
D: sklearn.preprocessing.FeatureBin().fit_transform(features)  
D: sklearn.preprocessing.FeatureBinarizer().fit_transform(features)  

# Compensating for large scales with log transformations

### Remember
Q: What is the output distribution, when a log transformation is applied on a log-normal distribution?  
A: Normal distribution.   
D: Exponential distribution.  
D: Negative log distribution.  
D: No change in distribution.  

### Understand
Q: What is the purpose of using log transformation?  
A: To remove skewness either right or left from a feature.  
D: To improve over a sparse feature.  
D: To fill missing values by interpolation.  
D: To fill missing values by exterpolation.  

### Apply
Q: You have a matrix given as [[0, 1], [2, 3]]. How can you apply a log transformation on this matrix using Scikit-Learn?  
A: sklearn.preprocessing.FunctionTransformer(numpy.log1p)  
D: sklearn.preprocessing.FunctionTransformer(method='log1p')  
D: sklearn.preprocessing.LogTransformer()  
D: sklearn.preprocessing.LogTransformer(errors='coerce')  

### Analyze
Q: A log base 10 transformation is applied on a sample resulting in the arithmetic mean of the log transformed values as 1. What is the geometric mean of the raw data?  
A: 10  
D: 20  
D: 1  
D: 0  

# Compensating for large scales with power transformations

### Remember
Q: Which transformation belongs to power transformation family?  
A: Box-Cox  
D: Linpekov  
D: Square  
D: Cube  

### Understand
Q: What is true about the power transformation?  
A: It is used to stabilize the variance of a feature.  
D: It degrades the validity of measures of association.  
D: It makes the data more log-normal distribution-like.  
D: It makes the data more exponential distribution-like.  

### Apply
Q: You need to convert the distribution of a feature given as [[40, 2], [3, 20], [4, 50]] to more Gaussian-like. How can you apply a power transformer on the given feature to achieve the task?  
A: Using the command sklearn.preprocessing.PowerTransformer().fit(feature) and later transforming the features.  
D: Transforming using the command sklearn.preprocessing.PowerTransformer().transform(feature)  
D: Using the command sklearn.preprocessing.GaussianTransformer().fit(feature) and later transforming the features.   
D: Using the command sklearn.preprocessing.GaussianTransformer().fit_transform(feature) to fit and transform the features.   

### Analyze
Q: You have implemented a power transformation on a data with NaNs using Scikit-Learn. How does NaN values are handled by the transformer and how can you retrieve the lambdas of the fitted transformer?  
A: The NaN values are treated as missing values and maintained by transform method. The lambdas are retrieved using lambdas_ attribute.  
D: The NaN values are treated as missing values and maintained by fit method. The lambdas are retrieved using lambdas_ attribute.  
D: The NaN values are treated as outliers and maintained by transform method. The lambdas are retrieved using lambdas attribute.  
D: The NaN values are treated as outliers and maintained by fit method. The lambdas are retrieved using lambdas attribute.  












