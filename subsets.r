age <- c(21,25,36,14,20)
sex <- c(T, T, T, F, F)
# create data frame 
data <- data.frame(age, sex)
# 1 (single)
data[data$age > 20, ]
# 2 (multiple)
data[(data$age > 15 & data$sex == F), ]
# 3 using subset 
subset(data, age > 15 & sex == F)
# 4 with which 
data[ which(data$age > 15 & data$sex == F), ]
# 5 which helps to prevent the NA values
# in others methods you need to add !is.na() condition
data <- rbind(data, c(NA, T))
data[data$age > 20, ] # with NA
data[ which(data$age > 20), ] # without
# you can use more advanced method using SQL
library(sqldf) # https://cran.r-project.org/web/packages/sqldf/sqldf.pdf
sqldf("select * from mtcars where gear=3 AND vs=1 order by mpg DESC") # you can save row names, set - row.names = T
# result:
#   mpg cyl  disp  hp drat    wt  qsec vs am gear carb
# 1 21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
# 2 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
# 3 18.1   6 225.0 105 2.76 3.460 20.22  1  0    3    1
