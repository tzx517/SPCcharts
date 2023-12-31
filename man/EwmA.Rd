% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/EwmA.R
\name{EwmA}
\alias{EwmA}
\title{Exponentially Weighted Moving Average Chart}
\usage{
EwmA(x)
}
\arguments{
\item{x}{a row vector with data to be monitored in interests sequentially listed
from left to right. The input could also be a matrix; each column represents all
observed data of different individuals at a specific time sequence}
}
\value{
EWMA chart
}
\description{
Calculating and plotting Exponentially Weighted Moving Average (EWMA) chart
}
\details{
Inside EWMA, we predefined lambda = .4, L = 10, detecting both upwards and
downwards shifts
}
\examples{
set.seed(10082)
a <- rnorm(20, mean = 0, sd = 1)
b <- rnorm(20, mean = 1, sd = 1)
c <- c(a,b)
as.matrix(c)
c <- t(c)
EwmA(c)
}
\author{
Yuhang Zhou
}
