library(reshape2)

# -------------------------------------------------------------
# melt -- making variable against value column with an optional ID column(s)
# -------------------------------------------------------------

# all columns came in "variable" and their values in "value"
d1 <- melt(airquality[1:3,], na.rm=TRUE); d1
#    variable value
# 1     ozone  41.0
# 2     ozone  36.0
# 3     ozone  12.0
# 4   solar.r 190.0
# 5   solar.r 118.0
# 6   solar.r 149.0
# 7      wind   7.4
# 8      wind   8.0
# 9      wind  12.6
# 10     temp  67.0
# 11     temp  72.0
# 12     temp  74.0
# 13    month   5.0
# 14    month   5.0
# 15    month   5.0
# 16      day   1.0
# 17      day   2.0
# 18      day   3.0

# selecting a column as an ID
d2 <- melt(airquality[1:3,], id = ("month"), na.rm=TRUE); d2
#    month variable value
# 1      5    ozone  41.0
# 2      5    ozone  36.0
# 3      5    ozone  12.0
# 4      5  solar.r 190.0
# 5      5  solar.r 118.0
# 6      5  solar.r 149.0
# 7      5     wind   7.4
# 8      5     wind   8.0
# 9      5     wind  12.6
# 10     5     temp  67.0
# 11     5     temp  72.0
# 12     5     temp  74.0
# 13     5      day   1.0
# 14     5      day   2.0
# 15     5      day   3.0

d3 <- melt(airquality[1:3,], id = c("month", "day"), na.rm=TRUE); d3
#    month day variable value
# 1      5   1    ozone  41.0
# 2      5   2    ozone  36.0
# 3      5   3    ozone  12.0
# 4      5   1  solar.r 190.0
# 5      5   2  solar.r 118.0
# 6      5   3  solar.r 149.0
# 7      5   1     wind   7.4
# 8      5   2     wind   8.0
# 9      5   3     wind  12.6
# 10     5   1     temp  67.0
# 11     5   2     temp  72.0
# 12     5   3     temp  74.0



# -------------------------------------------------------------
# cast -- functions similar to grouping implemented on melted data 
#         acast - to get vector/array/matrix as an output
#         dcast - to get dataframe as an output
# -------------------------------------------------------------


acast(d3, day ~ month ~ variable)
# , , ozone
# 
#    5
# 1 41
# 2 36
# 3 12
# 
# , , solar.r
# 
#     5
# 1 190
# 2 118
# 3 149
# 
# , , wind
# 
#      5
# 1  7.4
# 2  8.0
# 3 12.6
# 
# , , temp
# 
#    5
# 1 67
# 2 72
# 3 74

acast(d2, month ~ variable, mean)
#      ozone  solar.r     wind temp day
# 5 29.66667 152.3333 9.333333   71   2

acast(d2, month ~ variable, mean, margins = TRUE)
#          ozone  solar.r     wind temp day    (all)
# 5     29.66667 152.3333 9.333333   71   2 52.86667
# (all) 29.66667 152.3333 9.333333   71   2 52.86667

dcast(d2, month ~ variable, mean, margins = c("month", "variable"))
#   month    ozone  solar.r     wind temp day    (all)
# 1     5 29.66667 152.3333 9.333333   71   2 52.86667
# 2 (all) 29.66667 152.3333 9.333333   71   2 52.86667


# -------------------------------------------------------------
# recast -- does the work of melt and dcast in one go (gives a dataframe)
# -------------------------------------------------------------

recast(airquality[1:3,], id.var = "month", 
       measure.var = c("ozone", "solar.r", "wind", "temp", "day"), # is optional, if left blank all other than id.var will be considered
       formula = month ~ variable, mean, na.rm = TRUE)
#   month    ozone  solar.r     wind temp day
# 1     5 29.66667 152.3333 9.333333   71   2

# which is equivalent to the code given below

d4 <- melt(airquality[1:3,], id = ("month"), na.rm=TRUE)
acast(d4, month ~ variable, mean)
#      ozone  solar.r     wind temp day
# 5 29.66667 152.3333 9.333333   71   2
