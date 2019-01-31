# Defining how Scikit-Learn is used for data mining

### Remember
Q: Which method is the part of Scikit-Learn's feature extraction module?  
A: FeatureHasher  
D: TF-IDF  
D: DictionaryVectorizer  
D: ListVectorizer  

### Understand
Q: What is the definition of CountVectorizer method?  
A: It implements both tokenization and occurrence counting in a single class  
D: It performs counting in a single class on a separately tokenized data  
D: It calculates the term frequency out of a raw data  
D: It implements only tokenization of a raw data  

### Apply
Q: You are performing information retreival task on a document. Given a word "demand" occurs only once throughout the document, what is its Inverse Document Frequency?  
A: 0  
D: 1  
D: 0.5  
D: 2  

### Analyse
Q: You need to find the stopwords used in a document. What step should you follow?  
A: Perform tokenization to compare each word with a list of stopwords  
D: Perform lemmatization to compare each word with a list of stopwords  
D: Perform SnowBall stemming to compare each word with a list of stopwords  
D: Perform Porter stemming to compare each word with a list of stopwords  


# Defining how Scikit-Learn is used for data analysis

### Remember
Q: Which cross-validation generator preserves the class distribution within each fold?  
A: StratifiedKFold  
D: GroupKFold  
D: KFold  
D: StratifiedShuffleSplit  

### Understand
Q: What happens with a decreasing cost hyper-parameter in Support Vector Machines?  
A: The number of support vectors increases  
D: The number of support vectors decreases  
D: The number of support vectors remain the same  
D: The margin hyperplane size decreases  

### Apply
Q: You are analyzing a dataset stored as a pandas dataframe named "df" with 100 features. What is needed to arrive on the count, mean, standard deviation and five-point summary of each feature?  
A: df.describe()  
D: df.info()  
D: df.detail()  
D: df.show()  

### Analyze
Q: You have five quantitative features in a dataset with correlation values given as (F1,F2::0.02), (F1,F3::0.7), (F1,F4::-0.5) and (F1,F5::-0.75). Which feature is highly correlated with first feature (F1)?  
A: F5  
D: F2  
D: F3    
D: F4  

# Describing the foundational library SciPy upon which scikit-learn is built

### Remember
Q: Which module is a part of SciPy library?  
A: fftpack  
D: optim  
D: inter1p  
D: image  

### Understand
Q: What is the difference between NumPy and SciPy?  
A: SciPy consists of fully-featured versions of modules which is not the case with NumPy.  
D: SciPy consists of text processing modules which is not the case with NumPy.  
D: SciPy provides linear algebra module which is not available in NumPy  
D: SciPy's goal is to provide compatibility whereas NumPy's goal is to provide complete features of a module  

### Apply
Q: You have been given with two 1D arrays as [10, 10, 20, 10, 4] and [2, 2, 4, 5]. How can you find the repeating elements of each array  [10, 2] along with their repeatition count [3, 2]?  
A: from scipy import stats; stats.find_repeats([[10, 10, 20, 10, 4], [2, 2, 4, 5]])  
D: from scipy import stats; stats.find_repeats([[10, 10, 20, 10, 4], [2, 2, 4, 5]])  
D: from scipy import stats; stats.find_repeats([[10, 10, 20, 10, 4], [2, 2, 4, 5]])  
D: from scipy import stats; stats.find_repeats([[10, 10, 20, 10, 4], [2, 2, 4, 5]])  

### Analyze
Q: You have configured Anaconda environment in your system and imported SciPy module. However, it resulted into an ImportError, what can you do to eradicate this error?  
A: pip install scipy  
D: pip install SciPy  
D: pip verify scipy  
D: pip verigy SciPy  

# Identifying the Scikit-Learn licensing requirements

### Remember
Q: Under which license does Scikit-Learn is distributed publicly?  
A: New BSD license  
D: MIT license  
D: Apachae license 2.0    
D: GNU General Public License (GPL)  

### Understand
Q: Which is a complete condition about Scikit-Learn's license?  
A: Redistributions of source code must retain the mentioned copyright notice, given list of conditions and the mentioned disclaimer.  
D: Redistributions of source code must retain the mentioned copyright notice and the mentioned disclaimer.  
D: Redistributions in binary form must reproduce the mentioned copyright notice in the documentation and/or other materials provided with the distribution.  
D: Redistributions in binary form must reproduce the mentioned disclaimer in the documentation and/or other materials provided with the distribution.  


D: 
