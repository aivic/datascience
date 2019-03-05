This directory holds the most frequently used methods of -
* NumPy
* Pandas 
* Matplotlib
* Seaborn
* Scikit-Learn
* Tensorflow
* Keras

The results are based on methods used in all the answers associated with particular tag on Stack Overflow.


R -

install.packages('wordcloud2')
library(wordcloud2)

df <- read.csv('methods_pandas.csv')


wordcloud2(df, size = 2, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)


SQL -

select OwnerUserId, Id, ParentId, Score, CreationDate, Body 
  from Posts 
  where PostTypeId=2
  and ParentId in 
    (select PostId from PostTags where TagId=67719)
