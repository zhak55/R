# find mode
mode.n <- function(data, n = 1) {
  if(missing(data)) stop("Pass data parameter")
  sort(table(data), decreasing = T)[1:n]
}
