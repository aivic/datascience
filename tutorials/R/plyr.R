library(plyr)

# -------------------------------------------------
# arrange -- Sort values based on column(s)
# -------------------------------------------------

# Original
mtcars[1:5,]
#                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2

# Sorting ascending based on cyl and descending based on disp
arrange(mtcars[1:5,], cyl, desc(disp))
#    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# 1 22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# 2 21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# 3 21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# 4 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# 5 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2

# Preserving the rownames
myCars = cbind(vehicle=row.names(mtcars[1:5,]), mtcars[1:5,])
d <- arrange(myCars, cyl, desc(disp))
rownames(d) <- d$vehicle; d <- d[,-1]; d
#                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2


# -------------------------------------------------
# each -- Aggregate multiple functions into a single function.
# -------------------------------------------------

f <- each(min, max)
f(1:100)
# min max 
# 1   100

# function short-hand
each(min, max)(1:100)
# min max 
# 1   100


# -------------------------------------------------
# idata.frame -- Construct an immutable data frame.
# -------------------------------------------------

# An experiment to check mutability in dataframe
df1 <- data.frame(c(1,2,3),c(4,5,6))
names(df1) <- c("C1","C2"); df1

df2 <- df1
df2[2,2] <- 80
df1[2,2] # 5
# No change in original dataframe values

df3 <- idata.frame(df1)
df3[2,2] <- 85
# Results into an error. Hence, with idata.frame, no changes can be done. Acts like Tuple in python


# -------------------------------------------------
# join -- join 2 dataframes together
# -------------------------------------------------

df1 <- data.frame(c("Emp1", "Emp2","Emp5"), c("Mng1","Mng2","Mng5")); names(df1) <- c("Emps","Mngs"); df1
df2 <- data.frame(c("Emp1", "Emp3","Emp4")); names(df2) <- "Emps"; df2


join(df1, df2, by = "Emps", type = "full")
#   Emps Mngs
# 1 Emp1 Mng1
# 2 Emp2 Mng2
# 3 Emp5 Mng5
# 4 Emp3 <NA>
# 5 Emp4 <NA>


# -------------------------------------------------
# match_df -- extracts rows from 2 dataframes if specified column values matches
# -------------------------------------------------

match_df(df1, df2, on = "Emps")
#   Emps Mngs
# 1 Emp1 Mng1


# -------------------------------------------------
# mutate -- Mutate a data frame by adding new or replacing existing columns.
# -------------------------------------------------

# temporary change
mutate(airquality[1:5,], new_col = -Ozone)[1:5,]

# permanent change
airquality["new_col"] <- -airquality$Ozone


# -------------------------------------------------
# summarise
# -------------------------------------------------

summarise(baseball, nteams = length(unique(team)))
