library('purrr')
library('magrittr')

# basic map 
nums <- 1:5

map(nums, function(x) x ^ 3) %>% unlist() 
# return a list

# map with some modification 
map_if # with condition 
map_chr
map_lgl
map_at
map_int
map_dbl

# reduce

reduce(nums, function(memo, x){
  paste('memo =', memo, 'x =', x) %>% print()
  memo + x
})

# "memo = 1 x = 2"
# "memo = 3 x = 3"
# "memo = 6 x = 4"
# "memo = 10 x = 5"
# 15

#starts with the last element of a vector
reduce_right(nums, function(memo, x){
  paste('memo =', memo, 'x =', x) %>% print()
  memo + x
})
