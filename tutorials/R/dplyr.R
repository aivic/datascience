library(dplyr)

# -------------------------------------------------
# between - Do values in a numeric vector fall in specified range?
# -------------------------------------------------

between(c(89,50,455,96),left = 60, right = 900)
# TRUE FALSE  TRUE  TRUE


# -------------------------------------------------
# case_when - can be used for ifelse
# -------------------------------------------------

x <- 1:10 
case_when(
  x == 2 ~ "It is 2",
  x >=5 ~ "GE"
)
# NA "It is 2" NA NA  "GE"  "GE"  "GE"  "GE"  "GE"  "GE"


# -------------------------------------------------
# distinct
# -------------------------------------------------

df <- data.frame(matrix(c(1,2,1,2,3,4,3,4,5,6), byrow = T, ncol = 2)); df
distinct(df)
#   X1 X2
# 1  1  2
# 3  3  4
# 5  5  6

# or alternatively
unique(df)


# -------------------------------------------------
# filter - return rows with matching conditions
# -------------------------------------------------

filter(starwars, species == "Human")

filter_all(mtcars[1:5,1:4], any_vars(. > 50))
#    mpg cyl disp  hp
# 1 21.0   6  160 110
# 2 21.0   6  160 110
# 3 22.8   4  108  93
# 4 21.4   6  258 110
# 5 18.7   8  360 175

filter_all(mtcars[1:5,1:4], all_vars(. > 5))
#    mpg cyl disp  hp
# 1 21.0   6  160 110
# 2 21.0   6  160 110
# 3 21.4   6  258 110
# 4 18.7   8  360 175


# -------------------------------------------------
# group_by
# -------------------------------------------------

d1 <- mtcars[1:30,] %>% group_by(cyl); d1 # nothing changed in console (use summarize next for change)

group_vars(d1)
# "cyl"

groups(d1)
# [[1]]
# cyl

d1 %>% summarise(disp = mean(disp), hp = mean(hp))
# # A tibble: 3 x 3
#     cyl  disp    hp
#   <dbl> <dbl> <dbl>
# 1     4  104.   80 
# 2     6  183.  122.
# 3     8  357.  200.


# -------------------------------------------------
# na_if -- replace any value with NA
# -------------------------------------------------

na_if(1:5, 2)
# 1 NA  3  4  5


# -------------------------------------------------
# near -- helpful to compare near floating numbers
# -------------------------------------------------

sqrt(2) ^ 2 == 2
# FALSE

near(sqrt(2) ^ 2, 2)
# TRUE


# -------------------------------------------------
# n_distinct -- counts unique values
# -------------------------------------------------

n_distinct(mtcars)
# 32
# faster than nrow(unique(mtcars)) 


# -------------------------------------------------
# order_by
# -------------------------------------------------

order_by(1:10, cumsum(10:1))
# 10 19 27 34 40 45 49 52 54 55

# -------------------------------------------------
# sample - generate random index
# -------------------------------------------------

sample(20)
# 16  2  4 19 10  9 13 15  6  3  1  8  7 18  5 12 20 17 14 11


# -------------------------------------------------
# select
# -------------------------------------------------

select(iris, starts_with("Petal"))[1:5,]
#   Petal.Length Petal.Width
# 1          1.4         0.2
# 2          1.4         0.2
# 3          1.3         0.2
# 4          1.5         0.2
# 5          1.4         0.2


# -------------------------------------------------
# set operations - union, intersect, setdiff
# -------------------------------------------------

d1 <- mtcars[1:10,]; d2 <- mtcars[5:15,]

intersect(d1,d2)
#    mpg cyl  disp  hp drat   wt  qsec vs am gear carb
# 1 18.7   8 360.0 175 3.15 3.44 17.02  0  0    3    2
# 2 18.1   6 225.0 105 2.76 3.46 20.22  1  0    3    1
# 3 14.3   8 360.0 245 3.21 3.57 15.84  0  0    3    4
# 4 24.4   4 146.7  62 3.69 3.19 20.00  1  0    4    2
# 5 22.8   4 140.8  95 3.92 3.15 22.90  1  0    4    2
# 6 19.2   6 167.6 123 3.92 3.44 18.30  1  0    4    4

union(d1, d2)
# all 15 rows

setdiff(d1, d2)
# rows only in d1


# -------------------------------------------------
# slice - slice rows by position
# -------------------------------------------------

slice(mtcars, 1:3)
#    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# 1 21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# 2 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# 3 22.8   4  108  93 3.85 2.320 18.61  1  1    4    1