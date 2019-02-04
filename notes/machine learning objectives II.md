* Building a bag-of-words from a text document using scikit-learn
* Extracting patches from an image using scikit-learn
* Mapping a dataset to a common distribution (such as Uniform or Gaussian) using Scikit-learn 
* Normalizing a data set using scikit-learn
* Reducing dataset complexity with dimensionality reduction using scikit-learn
* Summarizing the functions available in scikit-learn used to approximate feature mappings for specific kernels

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
Q: 
