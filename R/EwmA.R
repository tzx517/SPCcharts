##' Calculating and plotting Exponentially Weighted Moving Average (EWMA) chart 
##' 
##' Inside EWMA, we predefined lambda = .4, L = 10, detecting both upwards and 
##' downwards shifts 
##' @title Exponentially Weighted Moving Average Chart 
##' @param x a row vector with data to be monitored in interests sequentially listed 
##' from left to right. The input could also be a matrix; each column represents all 
##' observed data of different individuals at a specific time sequence
##' @return EWMA chart
##' @author Yuhang Zhou
##' @export
##' @examples
##' set.seed(10082)
##' a <- rnorm(20, mean = 0, sd = 1)
##' b <- rnorm(20, mean = 1, sd = 1)
##' c <- c(a,b)
##' as.matrix(c)
##' c <- t(c)
##' EwmA(c)
EwmA <- function(x){
  lambda <- .4
  L <- 10
  n <- ncol(x)
  Cstat <- rep(0,n)
  Cstat[1] <- lambda * mean(x[,1]) 
  CL1 <- rep(0,n)
  CL2 <- rep(0,n)
  for (i in 1:n) {
    CL1[i] <- L/sqrt(n) * sqrt(lambda / (2 - lambda) * (1-(1-lambda)^(2 * i)))
    CL2[i] <- - L/sqrt(n) * sqrt(lambda / (2 - lambda) * (1-(1-lambda)^(2 * i)))
  }
  
  for (i in 2:n) {
    Cstat[i] <- lambda * mean(x[, i]) + (1 - lambda) * Cstat[i-1]
  }
  plot(1:n, Cstat, type = "l")
  lines(1:n, CL1, type = "l")
  lines(1:n, CL2, type = "l")
  return(Cstat)
}