df <- read.table(text = "
 Person  Date    value
 A   1-Jan-17    12
 A   2-Jan-17    13
 A   3-Jan-17    65
 B   2-Jan-17    34
 B   3-Jan-17    76
 B   4-Jan-17    98
 C   3-Jan-17    34
 C   4-Jan-17    45
 C   1-Jan-17    10", header = TRUE)

df %>% spread(Person,value, fill = 0)
