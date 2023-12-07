## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(SPCcharts)
set.seed(10082)
a <- rnorm(20, mean = 0, sd = 1)
b <- rnorm(20, mean = 1, sd = 1)
c <- c(a,b)
as.matrix(c)
c <- t(c)
EwmA(c)
CusuM(c)

## -----------------------------------------------------------------------------
set.seed(10083)
A <- matrix(rnorm(100,0,1),1,100)
B <- matrix(rnorm(100,1,1),1,100)
C <- cbind(A,B)
Shewhart(C)

