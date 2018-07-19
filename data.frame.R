dataList <- list()
carsNames <- c()
carsModels <- c()

for(j in 1:10) {
  for(i in 1:5) {
    carsNames[i] <- rnorm(1) 
    carsModels[i] <- rnorm(1) 
  }
 dataList[[j]] <- data.frame(carsNames, carsModels)
}
# merge all
do.call(rbind, dataList)
