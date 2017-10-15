import subprocess as sp
tmp = sp.call('cls',shell=True)

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import itemfreq

np.set_printoptions(threshold=np.nan)

# 9 Friends
df = pd.read_table('chat_old.txt')

''' Concatenating same people chats which were taken in next line(s) ''' 
bools = df.iloc[:len(df),0].str.contains(r'^\d+\/\d+\/\d+, \d+:\d+:\d+ .M:')

i = len(df) - 1
while (i >= 0):
    if bools[i] == False:
        df.iloc[i - 1, 0] += ' ' + df.iloc[i, 0]
    i -= 1

df = df[bools]  # Dropping rows whose data is appended to source row

'''Splitting Timestamp and Chats in different columns '''
df = df.iloc[:,0].str.split('M:', 1, expand=True)
ts = df.iloc[:,0].copy()
ts = ts.reset_index(drop = True)
ts.columns = ['Timstamp']
df = df.iloc[:,1].str.split(':', 1, expand=True)
df = df.reset_index(drop = True)
df.columns = ['Name','Convo']


''' Mapping phone numbers to their person holder names '''

# for unicode use -> r'12345\xa067899'
df['Name'][df['Name'].str.contains(r'96905 90652')] = ' Naval Kishore'
df['Name'][df['Name'].str.contains(r'95360 30286')] = ' Ujjwal Sharma' 


''' removing messages when someone changes their numbers '''
df = df[df['Name'].str.contains(r'[0-9]') == False]


'''removing rows with either of the cases:
    <image omitted>
    <video omitted>
    <GIF omitted>
'''

df = df[df['Convo'].str.contains(r'image omitted') == False]
df = df[df['Convo'].str.contains(r'video omitted') == False]
df = df[df['Convo'].str.contains(r'GIF omitted') == False]
df = df.reset_index(drop = True)

''' not considering emojis for now 
in case you need them, convert them to unicode and then work on them'''


''' Counting top 3 words per friend '''

all_chat_list = []
for i in range(len(df['Name'].drop_duplicates())):
    temp = df['Convo'][df['Name'] == df['Name'].drop_duplicates().reset_index(drop = True)[i]]
    temp = temp.reset_index(drop = True)
    for j in range(1,len(temp)):
        temp[0] += ' ' + temp[j]
    all_chat_list.append(temp[0])
    del temp

fg = itemfreq(list(all_chat_list)[0].split(' '))

#print(df['Name'].drop_duplicates().reset_index(drop = True))
#print(fg[fg[:,1].astype(float).argsort()])

''' Plotting '''

# deepanshu
f1 = ['Bro', 'partyy', 'patale']
f1_val = [4, 4, 3]
# vivek
f2 = ['Dude', 'gf', 'Awesome']
f2_val = [3, 2, 1]
# naval
f3 = ['Bitch', 'cool', 'hahaha']
f3_val = [2, 1, 1]
# kalwa
f4 = ['lol','nope','gandi']
f4_val = [4, 2, 1]

bar_width = 0.1

#plt.barh((np.arange(3))/5, f1_val,  bar_width,label = 'Friend1')
#plt.barh((np.arange(3)+5)/5, f2_val,bar_width,label = 'Friend2')
#plt.barh((np.arange(3)+10)/5, f3_val, bar_width, label = 'Friend3')
#plt.barh((np.arange(3)+15)/5, f4_val, bar_width, label = 'Friend4')
#
#plt.legend()
#labels = np.concatenate([f1, f2, f3, f4])
#ax = plt.gca()
#ax.set_yticks(np.concatenate([(np.arange(3)/5), 
#                              (np.arange(3)+5)/5, 
#                              (np.arange(3)+10)/5,
#                              (np.arange(3)+15)/5]))
#ax.set_yticklabels(labels);
#plt.suptitle('whatsapp group text analysis', fontsize = 16)
#plt.title("Topmost used wrds in grp by frequent members")


''' Plotting graph on time to know which hour was the busiest '''
from datetime import *

# Converting 12 hr into 24 hr logic
splitted_ts= ts.str.split(', ')
for i in range(len(ts)):
    splitted_ts[i][1] += 'M'
    temp = datetime.strptime(splitted_ts[i][1], '%I:%M:%S %p')
    splitted_ts[i][1] = datetime.strftime(temp, '%H')

hrs = [ splitted_ts[i][1] for i in range(len(splitted_ts)) ]

hrfreq = itemfreq(hrs)

occ = [float(hrfreq[i][1]) for i in range(len(hrfreq))]
hr = [float(hrfreq[i][0]) for i in range(len(hrfreq))]
#print(hrfreq)
plt.plot(hr, occ)
plt.grid('on')
plt.xlabel('24 Hours')
plt.ylabel('Frequency')
plt.title('Frequent chat timings: 12:00-13:00 or 21:00')

