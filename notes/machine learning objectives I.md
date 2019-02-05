* Implementing PCA using scikit-learn
* Implementing Factor Analysis using scikit-learn
* Implementing Linear Discriminant Analysis (LDA) using scikit-learn
* Implementing Multidimensional Scaling (MDS) using scikit-learn
* Implementing t-distributed Stochastic Neighbor Embedding (t-SNE) using scikit-learn
* Implementing dictionary learning using scikit-learn


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

### Remember 
Q: In which step you perform hyper-parameter tuning of a machine learning model?  
A: Model validation  
D: Model selection  
D: Model fitting  
D: Model evaluation  

### Understand
Q: What do you understand by model evaluation?  
A: It tests final performance of model on test data  
D: It tests final performance of model on validation data  
D: It tests initial performance of model on train data  
D: It tests initial performance of model on test data  

### Apply
Q: You need to split a dataset into train (71%) and test (29%) data with same data points falling under respective sections in each and every run. What Scikit-Learn's command is required to to complete the task?  
A: sklearn.model_selection.train_test_split(data, test_size=0.29, random_state=42)  
D: sklearn.model_selection.split(data, test_size=0.29, random_state=0)  
D: sklearn.cross_validation.train_test_split(data, test_size=0.29)  
D: sklearn.cross_validation.split(data, test_size=0.29)  

### Analyze
Q: You need to implement a simple cross-validation where each learning set is created by taking all the samples except one, the test set being the sample left out. Which cross-validation technique implemented under Scikit-Learn is suitable for this task?  
A: Leave One Out implemented as LeaveOneOut()  
D: Skip One implemented as Skip()  
D: K Fold implemented as KFold()  
D: Stratified K Fold implemented as SKFold()  


# Describing the limitations of neural networks built with scikit-learn compared to more specialized frameworks

### Remember
Q: Which library provides only CPU-based implementation of neural networks?  
A: Scikit-Learn  
D: TensorFlow  
D: PyTorch    
D: Keras  

### Understand
Q: What is the key differentator between Scikit-Learn and other specialized neural network frameworks?  
A: Scikit-Learn is not intended for building neural networks on large-scale applications.  
D: Scikit-Learn supports GPU-based implementation of neural network model building.  
D: The parameters like weights and biases generated from Scikit-Learn are hard to visualize  
D: The model's metrics like loss and accuracy generated from Scikit-Learn are hard to visualize  

### Apply
Q: You will soon start working on a production project and currently seeking a neural network framework which provides low-level API to write algorithms from scratch for better control. Which framework is suitable for you?  
A: TensorFlow  
D: Scikit-Learn  
D: PyTorch  
D: Keras  

### Analyze
Q: You need to build a neural network on a dataset whose file-size spans in terabytes. What is recommended to build such a deep learning model?  
A: Use any specialized neural network framework which is GPU compatible.  
D: Use any specialized neural network framework which is CPU compatible.  
D: Use Scikit-Learn library since it is GPU compatible.  
D: Use Scikit-Learn library since it is CPU compatible.  

# Building a neural network to solve a classification problem

### Remember
Q: Which method implements classification using neural network in Scikit-Learn?  
A: MLPClassifier()  
D: Classification()  
D: Classifier()  
D: NNClassifier()  

### Understand
Q: What is true about implementing classification using neural network using Scikit-Learn?  
A: It supports only cross-entropy to calculate its loss function  
D: It supports only classification error to calculate its loss function  
D: It supports only mean squared error to calculate its loss function  
D: It supports only mean absolute error to calculate its loss function  

### Apply 
Q: You have built a neural network classifier using Scikit-Learn on a dataset of size 23 GB. How can you find the shape of the weight matrices from the fitted model?  
A: [coef.shape for coef in clf.coefs_]  
D: {coef for coef in clf.coefs_}  
D: (coef.shape for coef in clf.coefs)  
D: [coef for coef in clf.coefs]  

### Analyze
Q: You have a pretty large dataset onto which you need to deploy a neural net classifier using Scikit-Learn. Given that epochs should stop if no rise in target metric is observed, what solver is appropriate for such model?  
A: solver should be adam with early_stopping argument set to True  
D: solver should be sgd with no change in early_stopping argument  
D: solver should be sgd with early_stopping argument set to True  
D: solver should be lbfgs with no change in early_stopping argument  

# Building a neural network to solve a regression problem

### Remember
Q: Which method implements neural network regressor in Scikit-Learn?  
A: MLPRegressor  
D: Regression()  
D: Regressor()  
D: NNRegressor()  

### Understand
Q: What is true about implementing neural network regression using Scikit-Learn?  
A: It implements a multi-layer perceptron model that trains using backpropagation method  
D: It implements a McCulloch-Pitts neuron model that trains using backpropagation method  
D: It uses ReLU inside its activation function in the output layer  
D: It uses Leaky ReLU inside its activation function in the output layer  

### Apply
Q: You are building a neural network regression model using Adam optimizer. Which command satisfies the requirement with unity as the value for epsilon?  
A: sklearn.neural_network.MLPRegressor(epsilon=1)  
D: sklearn.neural_network.Regressor(solver='adam', epsilon=1)  
D: sklearn.neural_network.Regression(solver='adam', epsilon=1)  
D: sklearn.neural_network.NNRegressor(epsilon=1)  

### Analyze
Q: You have fitted a neural network regression model using stochastic gradient descent (SGD). Which metric has been optimized by SGD to build the network?  
A: Squared loss  
D: Mean abosolute deviation  
D: Hinge loss  
D: Cross entropy  

# Describing methods to help neural networks from overfitting data that are employed by Scikit-Learn

### Remember
Q: Which method is used to avoid overfitting in a machine learning model?  
A: Model regularization  
D: Model reformation  
D: Model selection    
D: Model evaluation  

### Understand
Q: What is true about an ideal overfit model?  
A: The training accuracy of the model becomes 100% whereas the validation accuracy reaches 0%.  
D: The training accuracy of the model becomes 0% whereas the validation accuracy reaches 100%.  
D: The training as well as validation accuracy of the model becomes 0%  
D: The training as well as validation accuracy of the model becomes 100%  

### Apply 
Q: You are deriving a boundary to separate two classes using a neural network classifier. However, it has been observed that the model undergone overfitting. What values of regularization paramters can be passed to overcome the issue?  
A: Large range of numbers produced as [i for i in np.logspace(-5, 3, 10)]  
D: Large range of natural numbers produced as [i for i in np.logspace(1, 10, 10)]  
D: Large range of whole numbers produced as [i for i in np.logspace(0, 10, 10)]  
D: Large range of negative numbers produced as [i for i in np.logspace(-10, -1, 10)]  

### Analyze
Q: You are implementing a neural net regressor which is showing good performance on training data but bad performance on test data. What can be done to eradicate this problem?  
A: Use alpha parameter to avoid overfitting  
D: Use gamma parameter to avoid overfitting  
D: Use beta parameter to avoid underfitting  
D: Use gamma parameter to avoid underfitting   


# Identifying the Dimensionality reduction algorithms supported by Scikit-Learn

### Remember
Q: Which dimensionality reduction algorithm has inbuilt support provided by Scikit-Learn?  
A: Principal Component Analysis  
D: Missing Value Ratio  
D: Low Variance Filter  
D: High Correlation Filter  

### Understand
Q: What is true about dimensionality reduction algorithms?  
A: They try to find out the subset of original features.  
D: They transform the data in the low-dimensional space to a space of high dimensions  
D: They require a large amount of computation during feature generation  
D: They don't obstruct the multicollinearity within the dataset features  


