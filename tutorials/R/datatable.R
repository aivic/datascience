library(data.table)

# ---------------------------------------------------
# duplicated -- bool of duplicate rows
# ---------------------------------------------------

DT <- data.table(A = rep(1:3, each=4), B = rep(1:4, each=3),
                 C = rep(1:2, 6))

DT[duplicated(DT)]
