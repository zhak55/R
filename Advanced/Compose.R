library('purrr')

# composition of functions
q_num <- compose(sum, unique, as.numeric) # == sum(unique(as.numeric(x)))
q_num(c('5', '5', '2')) # => 7
