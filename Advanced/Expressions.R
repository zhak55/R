expr <- quote(ifelse(5 > 2, 'yes', 'no'))
eval(expr) # "yes"

for(i in 1:length(expr)) print(expr[[i]]);
# ifelse
# 5 > 2
# [1] "yes"
# [1] "no"

# Parse string 

evalString <- function(text) {
  if(!require('magrittr')) stop('Install magrittr library')
  parse(text = text) %>%
    eval()
}

evalString(expr) # "yes"

# to string 
deparse(expr) # "ifelse(5 > 2, \"yes\", \"no\")"

# with call
eval(call('sum', 10, 10))

# capture the expression 

args_fn <- function(...) {
  if(!require('magrittr')) stop('Install magrittr library')
  expr <- match.call()
  for(i in 1:length(expr)) paste('Class of argument #', i, ' is ', class(expr[[i]]), sep = '') %>%
    print()
}

args_fn('John', 21, TRUE)
# Class of argument #1 is name
# Class of argument #2 is character
# Class of argument #3 is numeric
# Class of argument #4 is logical
