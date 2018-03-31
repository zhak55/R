# from R docs 

"%w/o%" <- function(x, y) x[!x %in% y] #--  x without y
(1:10) %w/o% c(3,7,12)
#  1  2  4  5  6  8  9 10
