dots <- function(data, ...) {
  mean(data, ...)
}

dots(c(1,2,NA), na.rm = T)
