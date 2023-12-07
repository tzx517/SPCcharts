## Readme file:
Name of the package: Simple Statistical Process Control (SPC) Charts

## Description:
This R package provides tools for calculating and plotting Exponentially Weighted Moving Average (EWMA), Cumulative Sum (CUSUM), and Shewhart charts for standardized data with distribution Normal(0,1). It’s designed for people interested in statistical process control and possible time series analysis.

## Installation:
```{r}
library(devtools)
devtools::install_github("tzx517/SPCcharts") 
```

## Usage:
There are three functions in this package: EwmA(), CusuM(), and Shewhart(). Each function would result in calculated chart statistics with corresponding control charts. For EWMA chart, shift parameter λ is specified to be .4, and limit constant L is specified to be 10. For CUSUM chart, the allowance constant is set to be .75, and the control limit is set to be 2.5 to achieve ARL0 = 200. The input of each function should be a row vector with data to be monitored in interests sequentially listed from left to right. The input could also be a matrix; each column represents all observed data of different individuals at a specific time sequence (especially for function Shewhart()). Example use of functions are listed below:

## Contribution:
Main contributors to this package:
Yuhang Zhou
Zhixin Tang
Shuyu Liu

