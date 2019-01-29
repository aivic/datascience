# Identifying common features found in image data

### Remember
Q: Which of the accompanying procedure does feature extraction is most firmly identified with?
A: Dimensionality reduction  
D: Clustering  
D: Regularization  
D: Regression  

### Understand
Q: What is the difference between local features and global features?  
A: Local features are usually geometric wheras global features are usually topological.  
D: Local features are usually statistical wheras global features are usually topological.  
D: Local features are usually statistical wheras global features are usually geometric.  
D: Local features are usually topological wheras global features are usually geometric.  

# Creating an adjacency matrix from network data

### Understand 
Q: Which of the following statement is correct regarding the creation of an adjacency matrix built using a weighted graph?  
A: It represents the edge weights for all the intersecting vertices.  
D: It represents the edge weights for all the vertices with incoming edges.  
D: It represents the count of incoming edges associated to each vertices  
D: It represents the count of all edges associated to each vertices  

### Apply
Q: You have an undirected network with a traingular structure. What is the adjacency matrix of this network in 1D format?  
A: 0, 1, 1, 1, 0, 1, 1, 1, 0  
D: 0, 1, 1, 1, 0, 0, 0, 1, 1  
D: 1, 0, 0, 0, 1, 0, 0, 0, 1  
D: 1, 0, 0, 0, 1, 1, 1, 0, 0  

### Analyse
You have a directed network with four nodes A, B, C and D. The node A is pointing towards node C and node C is pointing towards nodes B and D. What is the adjacency matrix of this network in 1D format such that when this 1D array is transformed into a 2D adjacency matrix, the values are filled rowwise?  
A: 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0  
D: 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0  
D: 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1  
D: 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1  

# Identifying common components of network metrics

### Remember
Q: Which of the following network metric provides an actual rate of transferring information?  
A: Throughput  
D: Bandwidth  
D: Latency  
D: Jitter  

### Understand
Q: What is the outcome of an increased jitter in a network?  
A: It degrades the performance of a network  
D: It increases the stability of a network  
D: It helps to reduce the signal to noise ratio  
D: It decreases the bandwidth of a network drastically 

### Apply
Q: You are designing a 50 kilometers of spreaded network and need to test its performance. What is the latency of the network in seconds?  
A: 1.6E-4  
D: 1.6E-5  
D: 2.9E-4  
D: 2.9E-5  

### Analyse
Q: You have transmitted a bit sequence 0 1 1 0 0 0 1 0 1 1 on a network and received a bit sequence 0 0 1 0 1 0 1 0 0 1. In this case, what is the Bit Error Rate of the sequence?  
A: 30%  
D: 70%  
D: 50%  
D: 60%  

# Identifying measures of centrality used with network data

### Remember
Q: Which of the following measure assumes that the most important nodes are close to other nodes in a network?  
A: Closeness centrality  
D: Degree centrality  
D: Betweenness centrality  
D: Feature centrality  

### Understand
Q: What do you understand by the term network centrality?  
A: It defines the number of neighbors of a node    
D: It defines the number of neighbors of a highest degree node  
D: It defines the maximum number of degrees of a network  
D: It defines the average number of degrees of a network  

### Apply
Q: You have to arrive on the measure of centrality of an undirected graph with an assumption that nodes which are important have many connections. What is the measure given that the graph has 15 nodes and 30 degrees?  
A: 2.14  
D: 2.00  
D: 0.50  
D: 1.53  

### Analyse
Q: You have to arrive on the measure of centrality of a network with an assumption that the most important nodes are close to other nodes in the network. What is the measure given that the network has 10 nodes and the sum of the shortest distance from each node to the particular node is 18?  
A: 0.50  
D: 2.00  
D: 1.80  
D: 8.00  

# Define commonly employed network metrics

### Remember
Q: Which of the following network metric measures the maximum rate at which information can be transferred?  
A: Bandwidth  
D: Latency  
D: Signal to Noise ratio  
D: Noise to Signal ratio  

### Understand
Q: In TCP/IP, how does the throughput of a network is affected by high latency combined with relatively small TCP window sizes?  
A: The throughput of the network drops sharply  
D: The throughput of the network drops gradually  
D: The throughput of the network lifts gradually  
D: The throughput of the network lifts abruptly  

### Apply
Q: You are setting up a network with TCP receive window size of 65,535 bytes and a round-trip time of 0.22 seconds. What is the throughput of the created network?  
A: 2.383 Mbit/s  
D: 5.996 Mbit/s  
D: 2.978 Mbit/s  
D: 5.345 Mbit/s  

### Analyse
Q: You own a website which receives 5000 page views per day with an average page size equal to 800 KB. What is the amount of bandwidth needed per month given the redundancy factor is 2?  
A: 243.5 GB  
D: 507.4 GB  
D: 200.6 MB  
D: 806.5 MB  

# Building a predictive model targeting associations using link prediction techniques 

### Remember
Q: Which of the following technique comprises of shortest path distance to perform link prediction?  
A: Feature-based techniques  
D: Kernel-based techniques  
D: Matrix factorization  
D: Stochastic relational model  

### Understand
Q: What is the difference between small world effect and scale free effect under link prediction domain?  
A: The former refers to the average distance in the network whereas the later refers to the phenomenon that only a few nodes have lots of links  
D: The former refers to the average distance in the network whereas the later refers to the phenomenon that there's a circle of small groups where each node is related to each other  
D: The former refers to the phenomenon that only a few nodes have lots of links whereas the later refers to the average distance in the network.  
D: The former refers to the phenomenon that there's a circle of small groups where each node is related to each other whereas the later refers to the average distance in the network.  

### Apply
Q: You have built a link prediction model which resulted into a True Positive score of 12, True Negative score of 10, False Positive score of 36 and False Negative score of 18. What is the precision of the following link prediction model?  
A: 0.25  
D: 1.20  
D: 3.60  
D: 1.80  

### Analyse
Q: You are validating a link prediction model with two queries. On first query, the relevant document precision is noted as 1.0, 0.67, 0.5, 0.44, and 0.5 whereas on second query, the relevant document precision is noted as 0.5, 0.4 and 0.43. What is the mean average precision of the model in this case?  
A: 0.53  
D: 3.11  
D: 1.33  
D: 2.22  















