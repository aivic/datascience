import subprocess as sp
tmp = sp.call('cls',shell=True)

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import itemfreq

np.set_printoptions(threshold=np.nan)

df = pd.read_excel('calls.xlsx')

''' Which one is more, Incoming, outgoing or missed? '''

##print(df.loc[:,'Call Type'].drop_duplicates()) # To name them
#collective = itemfreq(df.loc[:,'Call Type'].tolist())
#
#bar_width = 0.4
#lst = [collective[0][1], collective[1][1], collective[2][1]]
#plt.bar(np.arange(3), lst, bar_width, color = 'g')
#plt.title('Number of calls')
#plt.xticks(np.arange(3), [collective[0][0], collective[1][0], collective[2][0]])


''' What is the busiest hour '''

###temp = pd.DatetimeIndex(df['Time']); df['Date'] = temp.date;df['T'] = temp.time;del df['Time'];

#hrfreq = itemfreq(df['Time'].dt.hour)
#print(hrfreq)
#
#occ = [float(hrfreq[i][1]) for i in range(len(hrfreq))]
#hr = [float(hrfreq[i][0]) for i in range(len(hrfreq))]
#
#plt.plot(hr, occ, 'c-',hr, occ, 'go')
#plt.grid('on')
#plt.xlabel('24 Hours')
#plt.ylabel('Frequency')
#plt.title('Busiest Hour: 21:00')


''' What is the busiest day '''

#hrfreq = itemfreq(df['Time'].dt.dayofweek)
#print(hrfreq)
#
#occ = [float(hrfreq[i][1]) for i in range(len(hrfreq))]
#hr = [float(hrfreq[i][0]) for i in range(len(hrfreq))]
#
#plt.plot(hr, occ, 'c-',hr, occ, 'go')
#plt.grid('on')
#plt.xlabel('24 Hours')
#plt.ylabel('Total Number of calls')
#plt.title('Busiest Day: Of course, Sunday')
#plt.xticks(np.arange(7), ['MON','TUE','WED','THU','FRI','SAT','SUN'])


'''Since outgoing calls were made a lot, so let's find top 5 users to whom calls were made '''

df = df [df['Call Type'] == 'Outgoing']

df = df.reset_index(drop = True)
bools = df.loc[:,'Name'].notnull() 
df = df[bools].reset_index(drop = True)

out_calls = itemfreq(df['Name'])
occ = [float(out_calls[i][1]) for i in range(len(out_calls))]
hr = [out_calls[i][0] for i in range(len(out_calls))]
out_calls = out_calls[out_calls[:, 1].argsort()][::-1]



#  family members as expected have top notch values. So, we shall plot 2 
#  separate graphs, one for family members other for friends and all.

# This section is all upto you that how you want to take the values either 
# manually or directly

## HIGHEST FAMILY CALLs 
#lst = [ out_calls[0,1], out_calls[1,1], out_calls[2,1],
#        out_calls[3,1], out_calls[4,1], out_calls[5,1] ]
#plt.barh(np.arange(6), lst, 0.4, color = 'brown')
#plt.yticks(np.arange(6), [ out_calls[0,0], out_calls[1,0], out_calls[2,0],
#                           out_calls[3,0], out_calls[4,0], out_calls[5,0] ])
#plt.xlabel('Total number of calls')
#plt.title('Family: Highest number of calls')

## HIGHEST FRIENDS CALLs
#lst = [ out_calls[6,1], out_calls[7,1], out_calls[9,1],
#        out_calls[11,1], out_calls[13,1], out_calls[16,1] ]
#plt.barh(np.arange(6), lst, 0.4, color = 'm')
#plt.yticks(np.arange(6), [ out_calls[6,0], out_calls[7,0], out_calls[9,0],
#                           out_calls[11,0], out_calls[13,0], out_calls[16,0] ])
#plt.xlabel('Total number of calls')
#plt.title('Friends: Highest number of calls')

#print(df.iloc[4,1])



''' Visualizing variations among top outgoing callers in various months '''

#lst = [ out_calls[0,0], out_calls[1,0], out_calls[2,0], out_calls[3,0], out_calls[4,0], out_calls[5,0] ]
#
#for i in range(len(lst)):
#    fg = df[df['Name'] == lst[i]]
#    monfreq = itemfreq(fg['Time'].dt.month)    
#    
#    occ = [float(monfreq[i][1]) for i in range(len(monfreq))]
#    mon = [float(monfreq[i][0]) for i in range(len(monfreq))]
#    plt.plot(mon, occ, label = lst[i])
#
#plt.legend(loc = 'best')
#
#plt.ylabel('Total Number of calls')
#plt.title('Family Outgoing calls variation per month')
#plt.xticks(np.arange(4,11), ['APR','MAY','JUN','JULY','AUG','SEP','OCT'])


''' Visualizing variations among top outgoing callers in various months '''

#lst = [ out_calls[6,0], out_calls[7,0], out_calls[9,0], out_calls[11,0], out_calls[13,0], out_calls[16,0] ]
#
#for i in range(len(lst)):
#    fg = df[df['Name'] == lst[i]]
#    monfreq = itemfreq(fg['Time'].dt.month)    
#    
#    occ = [float(monfreq[i][1]) for i in range(len(monfreq))]
#    mon = [float(monfreq[i][0]) for i in range(len(monfreq))]
#    plt.plot(mon, occ, label = lst[i])
#
#plt.legend(loc = 'best')
#
#plt.ylabel('Total Number of calls')
#plt.title('Friends Outgoing calls variation per month')
#plt.xticks(np.arange(4,11), ['APR','MAY','JUN','JULY','AUG','SEP','OCT'])
