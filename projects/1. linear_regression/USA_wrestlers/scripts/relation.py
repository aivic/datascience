# No relation between Rank and Matches Fought


import subprocess as sp
tmp = sp.call('cls',shell=True)

import pandas as pd
import numpy as np
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression

df = pd.read_excel('db/usa_wrestlers_db.xlsx')

# Checking missing values

df = df.replace({'?':np.nan})   # Replacing missing values (?) with NaN
print((df.count()/len(df)) * 100)   # Percentage of missing values


# Removing 'Rank #' from Rank column
df['Rank'] = df['Rank'].replace({'Rank #':''},regex=True).astype(int)
print(df['Rank'].head())


# Extracting number of matches from Mathces Fought feature

import re

df['Matches Fought'] = df['Matches Fought'].replace({np.nan:'0'})

for i in range(1,2008):
    res = re.search(r'\d+', df['Matches Fought'][i])
    if res == None:
        df['Matches Fought'][i] = '0'
    else:
        df['Matches Fought'][i] = res.group()
print(df['Matches Fought'])

# Since extraction of all 2000+ players was taking a lot time. So I saved the 
# previous data into a new file and then used it for further program

df.to_excel('db/new_file.xlsx')
df = pd.read_excel('db/new_file.xlsx')
# Checking correlation
plt.figure()
plt.scatter(df['Matches Fought'], df['Rank'])
plt.title('Checking correlation')
plt.xlabel('Matches Fought')
plt.ylabel('Rank')


## Let us remove all those players who played 0 matches 
df['Matches Fought'] = df['Matches Fought'].replace({0:np.nan})
df = df[np.isfinite(df['Matches Fought'])]
#print(df.count())
plt.figure()
plt.scatter(df['Matches Fought'], df['Rank'])
plt.title('Checking correlation after removing players with no info Matches Fought')
plt.xlabel('Matches Fought')
plt.ylabel('Rank')

X_train, X_test, y_train, y_test = train_test_split(
        df['Matches Fought'], df['Rank'], test_size = 0.33, # Test data will be 33% of data
        random_state = 42) # assign it to some values, to get same values on each fresh run
 
X_train = np.transpose(np.matrix(X_train))
y_train = np.transpose(np.matrix(y_train))
X_test = np.transpose(np.matrix(X_test))
y_test = np.transpose(np.matrix(y_test))
        
lm = LinearRegression()

lm.fit(X_train, y_train)

pred_test = lm.predict(X_test)
plt.figure()
plt.scatter([y_test[:,0]],[pred_test[:,0]])
plt.title('Relationship between Actual and Predicted Ranks')
plt.xlabel('Actual Rank')
plt.ylabel('Predicted Rank')
 
## Hence, it proves there is no correlation between Players Rank and number of matches played