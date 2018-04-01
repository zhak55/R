library('purrr')

# composition of functions
q_num <- compose(sum, unique, as.numeric)
q_num(c('5', '5', '2'))
