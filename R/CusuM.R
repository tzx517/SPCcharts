##' Calculating and plotting Cumulative Sum chart. 
##' 
##' Assume that each observations follows N(0,1), k = .75, h = 2.5, with ARL0 = 200,
##' upward shifts only. 
##' @title Cumulative Sum chart 
##' @param x a row vector with data to be monitored in interests sequentially listed 
##' from left to right. The input could also be a matrix; each column represents all 
##' observed data of different individuals at a specific time sequence.
##' @return CUSUM chart 
##' @author Yuhang Zhou
##' @export
##' @examples
##' set.seed(10082)
##' a <- rnorm(20, mean = 0, sd = 1)
##' b <- rnorm(20, mean = 1, sd = 1)
##' c <- c(a,b)
##' as.matrix(c)
##' c <- t(c)
##' CusuM(c)
CusuM <- function(x) {
  n <- ncol(x)
  Cstat <- rep(0, n)
  stat <- rep(0, n)
  
  for (i in 1:n) {
    stat[i] <- mean(x[, i]) - .75
    if (i > 1) {
      Cstat[i] <- Cstat[i-1] + max(stat[i], 0)
    } else {
      Cstat[i] <- max(stat[i], 0)
    }
  }
  plot(1:n, Cstat, type = "l"); abline(h = 2.5, lty = 2)
  return(Cstat)
}