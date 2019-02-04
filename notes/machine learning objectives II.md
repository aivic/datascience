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












