Readme file:
Name of the package: Simple Statistical Process Control (SPC) Charts
Description:
This R package provides tools for calculating and plotting Exponentially Weighted Moving Average (EWMA), Cumulative Sum (CUSUM), and Shewhart charts for standardized data with distribution Normal(0,1). It’s designed for people interested in statistical process control and possible time series analysis.
Installation:
Replace with instructions on how to install this package.
Usage:
There are three functions in this package: EwmA(), CusuM(), and Shewhart(). Each function would result in calculated chart statistics with corresponding control charts. For EWMA chart, shift parameter λ is specified to be .4, and limit constant L is specified to be 10. For CUSUM chart, the allowance constant is set to be .75, and the control limit is set to be 2.5 to achieve ARL0 = 200.

The input of each function should be a row vector with data to be monitored in interests sequentially listed from left to right. The input could also be a matrix; each column represents all observed data of different individuals at a specific time sequence (especially for function Shewhart()). Example use of functions are listed below:

set.seed(10082)
a <- rnorm(20, mean = 0, sd = 1)
b <- rnorm(20, mean = 1, sd = 1)
c <- c(a,b)
as.matrix(c)
c <- t(c)
EwmA(c)
CusuM(c)

set.seed(10083)
A <- matrix(rnorm(100,0,1),1,100)
B <- matrix(rnorm(100,1,1),1,100)
C <- cbind(A,B)
Shewhart(C)

License:
Replace with the license of our package. If not applicable, delete this section.
Contribution:
Main contributors to this package:
Yuhang Zhou
Zhixin Tang
Your name here
![image](https://github.com/tzx517/SPCcharts/assets/153178004/503de975-c0a4-4ac8-898e-d742c92468c3)
