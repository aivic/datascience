* Generating an artificial data set for a specific model using scikit-learn
* Detecting outliers in a data set using scikit-learn


# Performing feature extraction on a python dict

### Remember
Q: Which encoding is used by Scikit-Learn to extract features from a python dictionary?  
A: One-of-K  
D: One-of-A  
D: One-of-M  
D: One-of-N  

### Understand
Q: How does Scikit-Learn extract features out of a python dictionary?  
A: It transforms lists of feature-value mappings to vectors.  
D: It transforms dictionary of feature-value mappings to vectors.  
D: It transforms lists of feature-value mappings to scalars.  
D: It transforms dictionary of feature-value mappings to scalars.  

### Apply
Q: You have a list of dictionaries named as "measurements" given as [{'city': 'Dubai', 'temperature': 33.}, {'city': 'London', 'temperature': 12.}, {'city': 'San Francisco', 'temperature': 18.}]. How to perform the feature extraction from the dictionary using Scikit-Learn?  
A: sklearn.feature_extraction.DictVectorizer().fit_transform(measurements).toarray()  
D: sklearn.feature_extraction.DictVectorizer(measurements).fit_transform().toarray()   
D: sklearn.feature_extraction.DictVectorizer(measurements).toarray()   
D: sklearn.feature_extraction.DictVectorizer(measurements)  

### Analyze
Q: You have a python data structure named "S" given as [{'foo': 1, 'bar': 2}, {'foo': 3, 'baz': 1}]. How can you extract its features given that the output should be transformed into a non-sparse matrix?  
A: sklearn.feature_extraction.DictVectorizer(sparse=False).fit_transform(S)  
D: sklearn.feature_extraction.DictVectorizer(S, sparse=False).fit_transform()  
D: sklearn.feature_extraction.DictVectorizer(S, sparse=False).fit_transform().toarray()  
D: sklearn.feature_extraction.DictVectorizer(S).fit_transform()  

# Implementing feature hashing using scikit-learn

### Remember
Q: What is the maximum number of features supported by feature hashing technique?  
A: 2^31 - 1  
D: (2^30)/4  
D: 2^16 - 2  
D: (2^64)/64  

### Understand
Q: Which of the following is true about feature hashing using Scikit-Learn?  
A: It is a high-speed and low-memory vectorizer.  
D: It builds a hash table of the features encountered in training set.  
D: It provides high-speed with better inspectability.  
D: Its input can be retreived back using inverse_transform method.  

### Apply
Q: You have a python data structure "d" given as [{'dog': 1, 'cat':2, 'elephant':4},{'dog': 2, 'run': 5}]. In what way you can implement the hashing trick on "d" with 10 features in the output matrix?  
A: sklearn.feature_extraction.FeatureHasher(n_features=10).transform(d).toarray()  
D: sklearn.feature_extraction.FeatureHasher(d, n_features=10).transform().toarray()  
D: sklearn.feature_extraction.FeatureHasher(d, n_features=10).transform()  
D: sklearn.feature_extraction.FeatureHasher().transform(d).toarray()  

### Analyze
Q: You are performing feature hashing using Scikit-Learn and need to make sure that the hash function should not cause collisions between (unrelated) features. What can be done to prevent the collisions for a small hash table?  
A: Use a signed hash function  
D: Use an unsigned hash function  
D: Use a differential computing function  
D: Use a integral computing function  

# Building a bag-of-words from a text document using scikit-learn

### Remember
Q: In which sequence specific strategies are used to build a bag-of-words using Scikit-Learn?  
A: Tokenizing, Counting and Normalizing.  
D: Tokenizing and Counting.  
D: Tokenizing and Normalizing.  
D: Only Tokenizing.  

### Understand
Q: Which is true about Tokenization strategy used while building a bag-of-words?  
A: White-spaces and punctuations are treated as token separators.  
D: White-spaces are comma are treated as token separators.  
D: White-spaces and hyphen are treated as token separators.  
D: Only white-spaces are treated as token separators.  

### Apply
Q: You need to create a matrix of token count from a list of documents named "doc" with a value of ['This is the first document.', 'This is the second second document.', 'And the third one.', 'Is this the first document?',]. What command is required to achieve the same?  
A: sklearn.feature_extraction.text.CountVectorizer().fit_transform(doc).toarray()  
D: sklearn.feature_extraction.text.CountVectorizer.fit_transform(doc).toarray()  
D: sklearn.feature_extraction.text.CountVectorizer().fit_transform(doc)  
D: sklearn.feature_extraction.CountVectorizer().fit_transform(doc).toarray()  

### Analyze
Q: You have built an output matrix of token counts from a list of documents which resulted in a poor performance for a machine learning model. You realize the model performance can be improved if you consider unigram as well as bigram. How can you achieve the same given a corpus named "corp" with values ['This is the first document.', 'This is the second second document.', 'And the third one.', 'Is this the first document?',]?  
A: sklearn.feature_extraction.text.CountVectorizer(ngram_range=(1, 2)).fit_transform(corp).toarray()  
D: sklearn.feature_extraction.text.CountVectorizer.fit_transform(corp, ngram_range=(1, 2)).toarray()  
D: sklearn.feature_extraction.text.CountVectorizer(ngram_range=(1, 2), corp).fit_transform(doc)  
D: sklearn.feature_extraction.CountVectorizer(corp).fit_transform(ngram_range=(1, 2)).toarray()  

# Extracting patches from an image using scikit-learn

### Remember
Q: Which command is used to extract features from multiple images simultaneously?  
A: PatchExtractor  
D: Extractor  
D: extract_patches_2d  
D: extract  

### Understand
Q: Which is true about extracting patches from an image using Scikit-Learn?  
A: A patch with a defined shape can be extracted from multiple images simultaneously  
D: A patch with a known area can be extracted from multiple images simultaneously  
D: Patches with different shapes can be extracted from multiple images simultaneously  
D: Patches with different shapes can be extracted from a single image simultaneously   

### Apply
Q: You have extracted 10 patches of shape (2, 2) from a red channel of an image of shape (4, 4, 3). How can you reconstruct the original image?  
A: sklearn.feature_extraction.image.reconstruct_from_patches_2d(patches, (4, 4, 3))  
D: sklearn.feature_extraction.reconstruct_from_patches_2d(patches, (4, 4, 3))  
D: sklearn.feature_extraction.image.reconstruct_from_patches_2d(patches, (4, 4, 3), (2, 2))  
D: sklearn.feature_extraction.reconstruct_from_patches_2d(patches, (4, 4, 3), (2, 2))  

### Analyze
Q: You are successful in extracting patches from images one at a time. However, with increasing number of available images, you are in a need of an estimator. How can you extract patches of shape (3, 5) from multiple images stored in a variable "img" using Scikit-Learn?  
A: sklearn.feature_extraction.image.PatchExtractor((3, 5)).transform(img)  
D: sklearn.feature_extraction.image.PatchExtractor().transform(img, (3, 5))  
D: sklearn.feature_extraction.image.PatchExtractor().transform((3, 5), img, 'extract')  
D: sklearn.feature_extraction.image.PatchExtractor(img, (3, 5)).transform('extract')   

# Mapping a dataset to a common distribution (such as Uniform or Gaussian) using Scikit-learn 

### Remember
Q: Which transformation is favored above scaling methods to smooth out the unusual distributions?  
A: Rank  
D: Quartile  
D: Range  
D: Moment  

### Understand
Q: Which is true about the process of mapping any distribution data to as close to a Gaussian distribution?  
A: It stabilizes variance and minimizes skewness.  
D: It involves the use of a family of non-parametric transformations.  
D: It is one of the non-monotonic transformation.  
D: It can be applied to a strictly negative data using Box-Cox.  

### Apply
Q: You have a dataset with one of the feature following a log-normal distribution. The given feature is expected to have presence of outliers. How can you convert the following feature's distribution to a normal distribution?  
A: sklearn.preprocessing.PowerTransformer(standardize=False).fit_transform(feature)  
D: sklearn.preprocessing.PowerTransformer(feature, standardize=False).transform()  
D: sklearn.preprocessing.PowerTransformer().transform(feature)  
D: sklearn.preprocessing.PowerTransformer(feature)    

### Analyze
Q: You have 105 skewed features in your dataset which can either have strictly positive or strictly negative values. What modification is needed to PowerTransformer method to bring their distribution to as close to a Gaussian distribution such that the transformed data has zero-mean and unit-variance?  
A: Proceed with the default settings.  
D: Proceed with inplace computation during transformation.  
D: Set the argument "method" to 'johnson'.  
D: Set the argument "method" to 'box-cox'.  

# Normalizing a data set using scikit-learn

### Remember
Q: What is the effect of normalization on individual samples?  
A: It scales them to have unit norm  
D: It scales them to have square root norm  
D: It scales them to have zero-mean and unit-variance  
D: It scales them to have unit-mean and zero-variance  

### Understand
Q: Where does implementation of normalization process is appropriate?  
A: On a quadratic form such as the dot-product.  
D: On an exponential increasing or decreasing data samples.  
D: On any other kernel to quantify the mean of any pair of samples.  
D: On any other kernel to quantify the mode of any pair of samples.  

### Apply
Q: You are building a nearest neighbor classification model on a dataset with unequal range of features. How can you normalize the features before feeding them to the machine learning model?  
A: sklearn.preprocessing.normalize(features, axis=0)  
D: sklearn.preprocessing.normalize(features, axis=0).fit()  
D: sklearn.preprocessing.normalize(features, axis=1)  
D: sklearn.preprocessing.normalize(features, axis=1).fit()  

### Analyze
Q: You have a sparse input data which is converted to the Compressed Sparse Rows (CSR) representation using SciPy csr_matrix method. How can you perform the lasso normalization of individual samples without creating an additional copy of the samples?   
A: sklearn.preprocessing.normalize(samples, norm='l1', copy=False)  
D: sklearn.preprocessing.normalize(samples, norm='l2', copy=True)  
D: sklearn.preprocessing.normalize(samples, norm='l1', copy=True, axis=1)  
D: sklearn.preprocessing.normalize(samples, norm='l2', copy=False, axis=0)  

# Reducing dataset complexity with dimensionality reduction using scikit-learn

### Remember
Q: What sort of data-set needs an implementation of dimensionality reduction methods?  
A: A data-set with large number of features.  
D: A data-set with small number of features.  
D: A data-set with more number of samples.  
D: A data-set with less number of samples.  

### Understand
Q: What happens when Singular Vector Decomposition (SVD) and Principal Component Analysis (PCA) methods are implemented on a data with zero mean?  
A: They end up producing same projection.  
D: They end up producing distinct projection.  
D: Similar projection results, given the data is left skewed.  
D: Similar projection results, given the data is right skewed.  

### Apply
Q: To compute Principal Component Analysis (PCA), you have four pairs of datapoints given as, {5, 5, -5}:{0, 1, 1}, {2.6, 5, -2.6}:{1, 0, -1}, {-6, 8, -20}:{8, 1, -2}, and {-6, 2, -20}:{8, 1, -2}. Which of these pairs can be chosen as the first two components of PCA?  
A: {5, 5, -5}:{0, 1, 1} and {-6, 8, -20}:{8, 1, -2}  
D: {5, 5, -5}:{0, 1, 1} and {-6, 2, -20}:{8, 1, -2}  
D: {2.6, 5, -2.6}:{1, 0, -1} and {-6, 8, -20}:{8, 1, -2}  
D: {2.6, 5, -2.6}:{1, 0, -1} and {-6, 2, -20}:{8, 1, -2}  

### Analyze
Q: You have performed preprocessing of a dataset which has features with very different scaling or statistical properties. What method is suitable to capture the links between such features?  
A: Use StandardScaler method from the preprocessing module.   
D: Use Scale method from the preprocessing module.   
D: Use FeatureAgglomeration method from the cluster module.  
D: Use HierarchicalClustering method from the cluster module.   

# Summarizing the functions available in scikit-learn used to approximate feature mappings for specific kernels

### Remember
Q: Which method is generally used for low-rank approximations of kernels?  
A: Nystroem Method for Kernel Approximation  
D: Radial Basis Function Kernel  
D: Additive Chi Squared Kernel  
D: Skewed Chi Squared Kernel  

### Understand
Q: Which is true about kernel approximation?  
A: They are best suitable for online learning.  
D: They perform linear transformation of the input.  
D: They are modeled for small to medium scale data-sets.  
D: Their mapping relies on a temporal difference approximation.   

### Apply
Q: You need to build a linear Support Vector Machine (SVM) model on a dataset using four quantitative features. How can you explicitly transform the features to a kernel map, prior to applying the algorithm?  
A: features = sklearn.kernel_approximation.RBFSampler(gamma=1, random_state=1).fit_transform(features)  
D: features = sklearn.kernel_approximation.RBFSampler(features, gamma=1, random_state=1).fit_transform()  
D: features = sklearn.kernel_approximation.RBFSampler(gamma=1).fit(features)  
D: features = sklearn.kernel_approximation.RBFSampler(gamma=1).transform(features)  

### Analyze
Q: You are performing a kernel approximation using additive chi squared kernel with first vector given as (-8, 5, 6). What is the value of additive chi squared kernel if the second vector is (8, -5, -6)?   
A: Undefined  
D: Zero  
D: A natural number      
D: An irrational number  

# Loading an internal sample data set in scikit-learn

### Remember
Q: Which toy dataset is available inside scikit-learn?  
A: Wine  
D: Air pollution  
D: Traffic  
D: Sea level  

### Understand
Q: Which is true about dataset loaders?  
A: By default, their function returns a dictionary-like object.  
D: By default, their function returns a list-like object.  
D: Their function can constrain the output to be a tuple holding only data.  
D: Their function can constrain the output to be a tuple holding only target.  

### Apply
Q: You are working on house price prediction problem and using inbuilt Boston dataset from Scikit-Learn. How can you import the features and store them in a variable, X?  
A: X = sklearn.datasets.load_boston()['data']    
D: X = sklearn.datasets.load_boston()['content']  
D: X = sklearn.datasets.load_boston()['features']   
D: X = sklearn.datasets.load_boston()['target']  

### Analyze
Q: You get a classification toy data set named digits from the internal corpus of Scikit-Learn. How can you account for the meaning of each feature within the data set?  
A: sklearn.datasets.load_digits().DESCR  
D: sklearn.datasets.load_digits().describe()  
D: sklearn.datasets.load_digits().INFO  
D: sklearn.datasets.load_digits().info()  

# Loading an external dataset in scikit-learn
Q: 



