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

# Converting nominal data to ordinal data for use in machine learning algorithms

### Remember
Q: What is a nominal data?  
A: A data with multiple and unrelated categories.  
D: A data with multiple and related categories.  
D: A data with binary and related categories.  
D: A data with only single category.  

### Understand
Q: What is the difference between nominal data and ordinal data?  
A: The former has unrelated categories whereas the latter has related categories.  
D: The former has related categories whereas the latter has unrelated categories.  
D: The former deals with only quantitative data whereas the latter deals with only qualitative data.  
D: The former deals with only qualitative data whereas the latter deals with only quantitative data.  

### Apply
Q: You have 10 different classes in a target feature of a dataset. How can you convert this nominal feature into an ordinal class feature?  
A: Implement pandas.factorize(feature) method to keep an order.  
D: Implement pandas.Ordinal(feature) method to convert into numeric features.  
D: Implement pandas.LabelEncoder(feature) method to keep an order.  
D: Implement pandas.ohe(feature) method to convert into numeric ordered features.   

### Analyze
Q: You a have dataset with an attribute consisting of numerous unique and unordered classes. What is true about the dimension of this feature once it is converted into an ordinal feature?  
A: It will have the same dimension as the previous feature with numeric values.  
D: It will have the same dimension as the previous feature with categorical values.  
D: It will transform into a feature of dimension MxN, where N is the number of unique classes.  
D: It will transform into a feature of dimension MxN, where M is the number of unique classes.  

# Transposing categories to integers using label encoding

### Remember
Q: What is the range of values encoded using label encoder method?  
A: Between 0 and n_classes-1  
D: Between 0 and n_classes  
D: Between 1 and n_classes-1  
D: Between 1 and n_classes  

### Understand
Q: What is true about implementing label encoding in Scikit-Learn?  
A: It can be implemented on a discrete quantitative data.  
D: It cannot be implemented on a continuous data.  
D: It results into a continuous stream of values.   
D: It results into an alphabetical stream of values.  

### Apply
Q: You have an array of values given as ['#$%', 'ALpd', '123', 89]. How can you label encode this data using Scikit-Learn method?  
A: sklearn.preprocessing.LabelEncoder().fit_transform(['#$%', 'ALpd', '123', 89])  
D: sklearn.preprocessing.LabelEncoder().fit(['#$%', 'ALpd', '123', 89])  
D: LabelEncoder will result into an error due to the element 89  
D: LabelEncoder will result into an error due to the element '#$%'  

### Analyze
Q: You have an array of values ["paris", "zaris", "tokyo", "amsterdam"] used to make a label encoder. What is the result of transform method when an input of values ["paris", "amsterdam", "zari", "tokyo"] is fed into it?  
A: ValueError  
D: NameError  
D: [1, 0, 3, 2]  
D: [0, 3, 1, 2]  

# Binarizing categories with one-hot encoding

### Remember
Q: What is the resultant output of an one-hot encoder?  
A: Binary features.  
D: Ratio features.  
D: Ordinal features.  
D: Scale features.  

### Understand
Q: What happens to the result of an one-hot encoder if the number of distinct classes of a target feature increases?  
A: With an increase in number of distinct classes, the number of output attributes increases.  
D: With an increase in number of distinct classes, the number of output attributes decreases.  
D: The result appears in a quantitative continuous data format after crossing a threshold of 200 distinct classes.  
D: The result appears in a quantitative discrete data format after crossing a threshold of 200 distinct classes.  

### Apply
Q: You have an array of values given as [[5, 1], [5, 3]]. What is the output of this array when one-hot encoding is applied on it?  
A: [[1., 1., 0.], [1., 0., 1.]]  
D: [[1., 0., 1.], [1., 0., 1.]]  
D: [[1., 0., 1.], [1., 1., 0.]]  
D: [[0., 1., 0.], [0., 0., 1.]]  

### Analyze
Q: You have fitted an one-hot encoder on a data given as [[5, 1], [8, 3], [6, 2]]. What is the transformed array when this encoder is implemented on a data with values [[8, 1], [8, 3], [6, 2]]?  
A: [[0., 0., 1., 1., 0., 0.], [0., 0., 1., 0., 0., 1.], [0., 1., 0., 0., 1., 0.]]  
D: [[1., 0., 0., 1., 0., 0.], [0., 0., 1., 0., 0., 1.], [0., 1., 0., 0., 1., 0.]]  
D: [[0., 1., 1., 0., 0.], [0., 1., 0., 0., 1.], [1., 0., 0., 1., 0.]]  
D: [[1., 0., 1., 0., 0.], [0., 1., 0., 0., 1.], [1., 0., 0., 1., 0.]]  

# Reviewing common modeling problems encountered with one-hot encoding

### Remember
Q: Which encoder is needed as a prerequisite before implementing one-hot encoding on a string data?  
A: Label.  
D: Scalar.  
D: Vector.  
D: Dummy.  

### Understand
Q: What is true about the issues faced by one-hot encoding?  
A: The representation size grows with the corpus.  
D: The correlated attributes are grouped together.  
D: The resultant matrix size ranges from 0 to n_classes/2.  
D: No feature can be hand-picked by the user.  

### Apply
Q: You have taken a sample out of a dataset given as [[5, 1, 0.5], [8, 3, 0.8], [6, 2, 0.1]]. How many new attributes will be created when one-hot encoding is applied on this array?  
A: 7  
D: 8  
D: 9  
D: 6  

### Analyze
Q: You are working in a limited resource environment where you need to encode a categorical feature for further processing. What type of encoder is suitable for this task?  
A: Label encoder as it will map only existing values of the feature to corresponding discrete values.  
D: Label encoder as it will map only existing values of the feature to corresponding continuous values.  
D: One-hot encoder as it will create new feature for every encountered unique class.   
D: One-hot encoder as it will diminish the feature size by keeping only one class out of all the correlate classes.  

# Compensating for one-hot limitations using a dummy coding

### Remember
Q: What should be the value of intercept to avoid collinearity while using an unregularized linear model with one-hot encoding?  
A: False  
D: True  
D: Greater than 0  
D: Less than 0  

### Understand
Q: What is the difference between applying one-hot encoding and dummy encoding on an attribute with N classes?  
A: The former converts the attribute into N new attributes whereas the latter converts it into N-1 new attributes.  
D: The former converts the attribute into N-1 new attributes whereas the latter converts it into N new attributes.  
D: The former converts the attribute into N+1 new attributes whereas the latter converts it into N new attributes.  
D: The former converts the attribute into N new attributes whereas the latter converts it into N+1 new attributes.  

### Apply
Q: You have to produce dummy variables using pandas.get_dummies() using an array with values ['Paris', 'Boston', numpy.nan]. What is the dimension of the resulting dataset?  
A: (3, 2)  
D: (3, 3)  
D: (2, 3)  
D: (2, 2)  

### Analyze
Q: You have a dataframe named "df" produced by the command pd.DataFrame({'A': ['a', 'b', 'c'], 'B': ['d', 'e', 'f'], 'C': [1, 2, 3]}). What are the names of the resulted dataframe columns when dummy encoding is applied on "df" by dropping the first level?  
A: C, A_b, A_c, B_e, B_f  
D: C, A_a, A_b, A_c, B_d, B_e, B_f  
D: A_a, A_b, A_c, B_d, B_e, B_f, C_2, C_3, C_1  
D: A_b, A_c, B_e, B_f, C_2, C_3, C_1  

# Compensating for one-hot limitations using an effect coding

### Remember
Q: What values are used by effect coding?  
A: 1, 0, -1  
D: 0, 1  
D: Between 0 to n_classes-1    
D: Between 1 to n_classes  

### Understand
Q: When should you use effect coding in preprocessing task over one-hot encoding?  
A: When there is a possibility of interaction between two categorical attributes.  
D: When you need to estimate simple as well as interaction effects.  
D: When there are large number of distinct classes, possibly more than 1000.  
D: When there are large number of distinct classes, possibly more than 200.  

### Apply
Q: You have a dataset with values [[1, 3, 2, 2], [numpy.nan, 3, 4, numpy.nan], [numpy.nan, 6, numpy.nan, 5], [10, 10, 9, 11]]. What is the coefficient of the regression model when you do the standard effect coding on the given dataset?  
A: 5.25  
D: 5.5  
D: 10  
D: 2.5  

### Analyze
Q: You need to apply effect coding on a sample dataset with values [[1, 3, 2, 2], [2, 3, 4, 3], [5, 6, 4, 5], [10, 10, 9, 11]] to feed it into a regression model. What is the value of the dataset grand mean and dimension of resultant dataframe except the target attribute?  
A: Grand mean = 5, Dimension = (16, 4)  
D: Grand mean = 10, Dimension = (16, 5)  
D: Grand mean = 5, Dimension = (9, 4)  
D: Grand mean = 10, Dimension = (9, 4)  

# Transposing categories to integers using bin counting

### Remember
Q: What is the core principle on which bin counting works?  
A: Probability theory.  
D: Hashing.  
D: Mapping.  
D: Collisions.  

### Understand
Q: In bin counting scheme, what happens if a data from a feature doesn't falls into any of the existing bins?  
A: It is assigned to a garbage bin.  
D: It is mapped to the last bin.   
D: It is assigned to a bin with highest number of values.   
D: It is assigned to a bin with lowest number of values.   

### Apply
Q: You have applied bin counting scheme on a dataset feature which resulted into 500 bins. How can you visualize the occurences of each bin?  
A: By using the histogram from the matplotlib package.   
D: By using the pie chart from the seaborn package.  
D: By using the scatter plot from the plotly package.  
D: By using the area chart from the matplotlib package.  

### Analyse
Q: You are applying a bin counting scheme on a dataset which resulted into 200 bins, some have high occurences whereas some have low occurences. What should be done with the bins with low number of occurences?  
A: They are merged with the garbage bin.  
D: They are all merged together.   
D: They are rejected from the dataset.  
D: They are kept as individual bins.   

# Hashing a nominal feature into a numeric feature

### Remember
Q: Hashing is a low-memory alternative to which feature extraction algorithm?  
A: DictVectorizer  
D: Word2Vec  
D: Glove    
D: TFIDF_Vectorizer  

### Understand
Q: What happens if you provide small number of features while performing hashing?  
A: It may lead to high number of hash collisions.  
D: It may decrease the number of hash collisions.  
D: It may create large coefficient dimensions.  
D: It may result into the breakdown of the algorithm.  

### Apply
Q: You have an array of values [{'dog': 1, 'cat':2, 'elephant':4},{'dog': 2, 'run': 5}] which is fed into Scikit-Learn's FeatureHasher(n_features=1) method for preprocessing. What is the dimension of the resultant matrix?  
A: (2, 1)  
D: (1, 2)  
D: (3, 3)  
D: (5, 3)  

### Analyze
Q: You have a Pandas series with values ['one', 'five', 'one']. What is the result of the series when the command sklearn.feature_extraction.FeatureHasher(n_features=5).transform(series).toarray() is applied on it?  
A: Results into an AttributeError.  
D: Results into a ValueError.  
D: [[ 1.,  0.,  0.,  0.,  0.], [ 0., -1.,  0.,  0.,  0.], [ 1.,  0.,  0.,  0.,  0.]]  
D: [[ 1.,  0.,  0.,  0.,  0.], [ 0., 1.,  0.,  0.,  0.], [ 1.,  0.,  0.,  0.,  0.]]  








