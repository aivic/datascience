library(tidyr)

# ---------------------------------------------------
# expand -- generate all unique combinations even if they are not present 
# ---------------------------------------------------

expand(mtcars, vs, cyl)
#     vs   cyl
#   <dbl> <dbl>
# 1     0     4
# 2     0     6
# 3     0     8
# 4     1     4
# 5     1     6
# 6     1     8


# ---------------------------------------------------
# fill -- fill NA values with the value above it 
# ---------------------------------------------------

df <- data.frame(Month = 1:5, Year = c(NA, 2000, NA, NA, 58))
df %>% fill(Year)
#   Month Year
# 1     1   NA
# 2     2 2000
# 3     3 2000
# 4     4 2000
# 5     5   58


# ---------------------------------------------------
# full_seq -- create a full sequence based on step
# ---------------------------------------------------

full_seq(c(0, 2, 4, 6, 10), 2)
# 0  2  4  6  8 10

full_seq(c(0, 2, 4, 6, 10), 1)
# 0  1  2  3  4  5  6  7  8  9 10


# ---------------------------------------------------
# gather -- creates key value pair columns
# ---------------------------------------------------


library(dplyr)
mini_iris <-
  iris %>%
  group_by(Species) %>%
  slice(1) # first row from each category
# Sepal.Length Sepal.Width Petal.Length Petal.Width Species   
#          <dbl>       <dbl>        <dbl>       <dbl>     <fct>     
# 1          4.9         3            1.4         0.2 setosa    
# 2          6.4         3.2          4.5         1.5 versicolor
# 3          5.8         2.7          5.1         1.9 virginica 

mini_iris %>% gather(key = flower_att, value = measurement, -Species)
#  Species    flower_att   measurement
# <fct>      <chr>              <dbl>
# 1 setosa     Sepal.Length         4.9
# 2 versicolor Sepal.Length         6.4
# 3 virginica  Sepal.Length         5.8
# 4 setosa     Sepal.Width          3  
# 5 versicolor Sepal.Width          3.2
# 6 virginica  Sepal.Width          2.7
# 7 setosa     Petal.Length         1.4
# 8 versicolor Petal.Length         4.5
# 9 virginica  Petal.Length         5.1
# 10 setosa     Petal.Width          0.2
# 11 versicolor Petal.Width          1.5
# 12 virginica  Petal.Width          1.9


# ---------------------------------------------------
# spread -- does opposite of gather
# ---------------------------------------------------

stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

stocksm <- stocks %>% gather(key = stock, value = price, -time)
stocksm %>% spread(stock, price)

# ---------------------------------------------------
# replace_na -- replace missing (NA) values
# ---------------------------------------------------

df <- tibble(x = c(1, 2, NA), y = c("a", NA, "b"), z = list(1:5, NULL, 10:20))
# # A tibble: 3 x 3
#         x y     z         
#      <dbl> <chr> <list>    
#   1     1 a     <int [5]> 
#   2     2 NA    <NULL>    
#   3    NA b     <int [11]>

df %>% replace_na(list(x = 0, y = "unknown"))
# # A tibble: 3 x 3
#         x y     z         
#      <dbl> <chr> <list>    
#   1     1 a     <int [5]> 
#   2     2 unknown    <NULL>    
#   3     0 b     <int [11]>






