##' Calculating and plotting Shewhart charts 
##' 
##' @title Shewhart chart
##' @param x a row vector with data to be monitored in interests sequentially listed 
##' from left to right. The input could also be a matrix; each column represents all 
##' observed data of different individuals at a specific time sequence.
##' @return Shewhart chart
##' @author Zhixin Tang
##' @export
##' @examples
##' set.seed(10083)
##' A <- matrix(rnorm(100,0,1),1,100)
##' B <- matrix(rnorm(100,1,1),1,100)
##' C <- cbind(A,B)
##' Shewhart(C)
Shewhart <- function(x){
  x <- as.data.frame(x)
  n <- ncol(x)
  means <- apply(x, 2, mean)
  z_scores <- (means - 0)/1 
  plot(1:n,z_scores, type ="l")
  abline(h = 2.5, lty = 2)
}