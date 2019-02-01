* Describing the limitations of neural networks built with scikit-learn compared to more specialized frameworks
* Building a neural network to solve a classification problem
* Building a neural network to solve a regression problem
* Describing methods to help neural networks from overfitting data that are employed by Scikit-Learn

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
Q: You have been given with two 1D arrays as [10, 10, 10, 4] and [2, 2, 4, 5]. How can you find the repeating elements of each array  [2, 4, 10] along with their repeatition count [2, 2, 3]?  
A: from scipy import stats; stats.find_repeats([[10, 10, 10, 4], [2, 2, 4, 5]])  
D: from scipy import stats; stats.repeat([[10, 10, 10, 4], [2, 2, 4, 5]])  
D: from scipy import stats; stats.mode([[10, 10, 10, 4], [2, 2, 4, 5]])  
D: from scipy import stats; stats.modes([[10, 10, 10, 4], [2, 2, 4, 5]])  

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

### Apply
Q: You have used Scikit-Learn library in building a machine learning software for your organization and ready to productionize it. Which possible license is required to publish this software?  
A: Any license  
D: Only distributions of BSD license  
D: Only MIT license  
D: Only Apache license 2.0  

### Analyze
Q: Your organization has built a product based on Scikit-Learn and ready for its promotion using the names of Scikit-Learn's authors  and contributors. What necessary step is required before the organization can start its marketing?  
A: You must take permission from Scikit-Learn owners in written.  
D: You must take permission from Scikit-Learn owners verbally.  
D: You can proceed with marketing the product but you must also inform the authors about this event    
D: You can proceed with marketing the product with no need to inform the authors about this event    

# Describing the feature topology of scikit-learn's packages

### Remember 
Q: Which feature is a part of the Scikit-Learn library?  
A: Dataset transformation  
D: Sparse data structures  
D: Date functionality  
D: Styling  

### Understand
Q: How does Scikit-Learn stores multiple methods which belong to a similar domain?  
A: Within a single module  
D: Within a single package  
D: Within multiple modules in a single package  
D: Within multiple classes in a single package  

### Apply
Q: You are building a baseline naive Bayes classification model on a dataset. Which mandatory step is required before predicting values on new features?  
A: Model fitting  
D: Model validation  
D: Model tuning  
D: Model selection  

### Analyze
Q: While comparing the library Scikit-Learn with the library pymvpa, you realized Scikit-Learn is built only upon core python libraries whereas pymvpa uses non-python dependencies. What are the core libraries on which Scikit-Learn is built upon?  
A: NumPy and SciPy  
D: NumPy  
D: R and Shogun  
D: Shogun  

# Comparing scikit-learn features to other machine learning Python packages, such as PyTorch and TensorFlow

### Remember
Q: Which of the python library provides high-level off-the-shelf algorithms for feature selection?  
A: Scikit-Learn  
D: PyTorch  
D: TensorFlow  
D: Keras  

### Understand
Q: What is true about Scikit-Learn and TensorFlow?  
A: Scikit-Learn can be built on the top of TensorFlow  
D: Scikit-Learn provides low-level function calls like add, matmul etc.  
D: Scikit-Learn provides high-level function calls like Trees, NaiveBayes etc.  
D: Scikit-Learn as well as TensorFlow are distributed under the MIT license.  

### Apply
Q: You need to predict the target variable using five independent features through a exponential regression model. How can you implement the model in the Scikit-Learn as well as in the TensorFlow?  
A: In Scikit-Learn use pre-defined methods whereas in TensorFlow build the respective algorithm  
D: In Scikit-Learn build the respective algorithm whereas in TensorFlow use pre-defined methods    
D: In Scikit-Learn use pre-defined methods whereas you cannot build the model in TensorFlow  
D: Both Scikit-Learn and Tensorflow doesn't support building an exponential regression model  

### Analyze
Q: Machine learning libraries provide visualization tools to compare several runs of output. Which visualization tool can be integrated with PyTorch to perform visualization?  
A: Visdom  
D: Tensorboard  
D: Crayon  
D: Pandas  

# Comparing scikit-learn usage to other machine  learning Python packages, such as PyTorch and TensorFlow

### Remember
Q: Which neural network algorithm is not yet supported by Scikit-Learn?  
A: Pix2Pix  
D: Restricted Boltzmann machines  
D: Classifier  
D: Regression  

### Understand
Q: While building a neural network in Scikit-Learn, what happens if you initiate with a warm start?   
A: It gives you more control over stopping criteria or learning rate  
D: It reduces the control over stopping criteria or learning rate  
D: It implements the stratified sampling on the dataset    
D: It results into the same output of method on each run  

### Apply
Q: You need to create a restricted boltzmann machines with binary visible units and binary hidden units. Given that the parameters are estimated using Stochastic Maximum Likelihood, how can you implement the model?  
A: sklearn.neural_network.BernoulliRBM()  
D: sklearn.neural_network.Bernoulli()  
D: sklearn.neural_network.Boltzmann()  
D: sklearn.neural_network.RBM()  

### Analyze
Q: You need to visualize 3D histograms of model accuracy on several runs. The code has been built in PyTorch, which is true about visualizing the 3D histograms?  
A: Use Tensorboard which supports PyTorch via tensorboard_logger  
D: Use Wisdom which is a visualization library for PyTorch
D: Use Matplotlib which supports PyTorch code  
D: Use Seaborn which supports PyTorch code  

# Describing where Scikit-learn fits into the machine learning project workflow






