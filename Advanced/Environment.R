new_env <- new.env()
new_env$isRightTriangle <- function(a,b,c) c^2 == a^2 + b^2
new_env$isRightTriangle(3,4,5) # => TRUE

isError <- tryCatch(isRightTriangle, error = function(e) e)
inherits(isError, "error") # => TRUE

# the environment variable names
ls(new_env)
# remove variable and value
rm(isRightTriangle, envir = new_env)
# existence 
exists("isRightTriangle", envir = new_env) # => FALSE
