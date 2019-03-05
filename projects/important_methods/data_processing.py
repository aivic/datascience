ans = pd.read_csv('Answers.csv', encoding='Latin_1', index_col=0, parse_dates=[5])
ans.head()

# Extracting only methods (may contain garbage data but we will take care of that during further data cleansing)
import re
p = re.compile('\.([A-Za-z_]+)(?=\(|\[)')
ans['Methods'] = ans.Body.apply(lambda x: p.findall(x))


# Making chunks to avoid limitation of memory size (IOPub data rate exceeded)
chunk_a = ans['Methods'].iloc[:50000][ans['Methods'].iloc[:50000].apply(lambda x: len(x)).ne(0)].apply(lambda x: ' '.join(x)).str.cat(sep=' ')
chunk_b = ans['Methods'].iloc[50000:100000][ans['Methods'].iloc[50000:100000].apply(lambda x: len(x)).ne(0)].apply(lambda x: ' '.join(x)).str.cat(sep=' ')
chunk_c = ans['Methods'].iloc[100000:][ans['Methods'].iloc[100000:].apply(lambda x: len(x)).ne(0)].apply(lambda x: ' '.join(x)).str.cat(sep=' ')


# Extracting only those methods whose occurence is more than n, here n = 100

chunk_a_val, chunk_a_cnt = np.unique(chunk_a.split(' '), return_counts=True)
chunk_a_n = [i for i in sorted(list(zip(chunk_a_val, chunk_a_cnt)), key=lambda x: x[1], reverse=True) if i[1] >= 100]

chunk_b_val, chunk_b_cnt = np.unique(chunk_b.split(' '), return_counts=True)
chunk_b_n = [i for i in sorted(list(zip(chunk_b_val, chunk_b_cnt)), key=lambda x: x[1], reverse=True) if i[1] >= 100]

chunk_c_val, chunk_c_cnt = np.unique(chunk_c.split(' '), return_counts=True)
chunk_c_n = [i for i in sorted(list(zip(chunk_c_val, chunk_c_cnt)), key=lambda x: x[1], reverse=True) if i[1] >= 100]

len(chunk_a_n), len(chunk_b_n), len(chunk_c_n) 

# Combining all chunks in one list
chunk_n = chunk_a_n + chunk_b_n + chunk_c_n
len(chunk_n)


from collections import defaultdict
d = defaultdict(int)
for i,j in chunk_n:
    d[i] += j 
chunk_n = sorted(list(zip(d.keys(),d.values())), key=lambda x: x[1], reverse=True) # Sorting in desc ord
len(chunk_n) # Hence, we're left with only 300 methods whose occurence is more than 100

methods = pd.DataFrame(chunk_n, columns=['Methods', 'Freq'])
methods.tail()

# methods.to_csv('methods.csv')

# ================================================== for other than Pandas ==========================================

ans = pd.read_csv('seaborn_answers.csv', encoding='Latin_1', parse_dates=[4])
ans.head()

# Extracting only methods (may contain garbage data but we will take care of that during further data cleansing)
import re
p = re.compile('\.([A-Za-z_]+)(?=\(|\[)')
ans['Methods'] = ans.Body.apply(lambda x: p.findall(x))

# Joining all rows
chunk = ans['Methods'][ans['Methods'].apply(lambda x: len(x)).ne(0)].apply(lambda x: ' '.join(x)).str.cat(sep=' ')

# Extracting only those methods whose occurence is more than n, here n = 100
chunk_val, chunk_cnt = np.unique(chunk.split(' '), return_counts=True)
chunk_n = [i for i in sorted(list(zip(chunk_val, chunk_cnt)), key=lambda x: x[1], reverse=True) if i[1] >= 100]
len(chunk_n)

methods = pd.DataFrame(chunk_n, columns=['Methods', 'Freq'])
methods.tail()

methods.to_csv('methods_seaborn.csv')
