import subprocess as sp
tmp = sp.call('cls',shell=True)

import numpy as np
from scipy.stats import itemfreq
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_excel('resources/dataset.xlsx')
features = pd.DataFrame({'Subject':df.iloc[:,0],
                          'Body':df.iloc[:,1],
                            'From': df.iloc[:,2],
                            'To': df.iloc[:,5],
                            'CC':df.iloc[:,8]})


to_freq = itemfreq(features.loc[:,'From'])

## Uncomment below command to get sorted result
#to_freq = np.array(sorted(to_freq, key=lambda x: x[1]))

n_grps = np.arange(to_freq.size//2)
bar_width = 0.56

plt.bar(n_grps, to_freq[:,1], bar_width, 
                 alpha = 0.5,
                 color = 'g',
                 label='frequency of senders')

plt.legend(loc='best')
plt.xlabel('Sender names not revealed')
plt.ylabel('Number of mails')

## Use below command to set names along with orientation
#loc, labels = plt.xticks(n_grps + bar_width, to_freq[:,0])
#plt.setp(labels, rotation = 90)
