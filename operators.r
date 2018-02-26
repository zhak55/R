# %whatever%

"%+^%" <- function(a, b) {
  res <- a + b;
  return(res^2)
}

a <- c(1,2,3)
b <- a

a %+^% b # 4 16 36

'%.%' <- function(...) {
 paste0(...)
}

'sas' %.% ' def' # sas def
