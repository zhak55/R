mydata <- na.omit(mtcars) 
mydata <- scale(mydata) 
wss <- (nrow(mydata)-1)*sum(apply(mydata,2,var))
for (i in 2:25) wss[i] <- sum(kmeans(mydata, centers=i)$withinss)

plot(1:25, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")
