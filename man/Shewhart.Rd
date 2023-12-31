% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Shewhart.R
\name{Shewhart}
\alias{Shewhart}
\title{Shewhart chart}
\usage{
Shewhart(x)
}
\arguments{
\item{x}{a row vector with data to be monitored in interests sequentially listed
from left to right. The input could also be a matrix; each column represents all
observed data of different individuals at a specific time sequence.}
}
\value{
Shewhart chart
}
\description{
Calculating and plotting Shewhart charts
}
\examples{
set.seed(10083)
A <- matrix(rnorm(100,0,1),1,100)
B <- matrix(rnorm(100,1,1),1,100)
C <- cbind(A,B)
Shewhart(C)
}
\author{
Zhixin Tang
}
