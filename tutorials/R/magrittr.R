library(magrittr)

# ----------------------------------------------------
# %in% -- (is in)
# ----------------------------------------------------

5 %in% c(5,2,8,9,6)
# TRUE


# ----------------------------------------------------
# freduce -- (applies a sequence of functions to last function output)
# ----------------------------------------------------

f1 <- function(x){return(x^2)}
f2 <- function(x){return(x + 5)}
f3 <- function(x){return(x - 10)}

freduce(3, c(f1,f2,f3))
# 3^2 = 9 | 9 +5 = 14 | 14 - 10 = 4


# ----------------------------------------------------
# %>% -- forward-pipe operator
# ----------------------------------------------------

func <- function(x,y){return(x**2 + y)};
v1 <- 5 %>% func(6); v1
# 5*5 = 25 | 25 + 6 = 31 # First argument is taken from %>% and final result stored in v1

1:10 %>% {c(min(.),max(.))}
# 1 10


# ----------------------------------------------------
# %<>% compound assignment pipe-operator
# ----------------------------------------------------

x <- -50
x %<>% abs; x


# ----------------------------------------------------
# %$% exposition pipe-operator
# ----------------------------------------------------

data.frame(z = rnorm(100)) %$% ts.plot(rnorm(100))
