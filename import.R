library(data.table)
library(RCurl)
library(magrittr)
library(readr)

url_d <- 'https://raw.githubusercontent.com/shifteight/R/master/TRB/data/houses.txt'
# 1
fread(url_d) %>% head()
# 2
getURL(url_d, ssl.verifyhost = F, ssl.verifypeer = F) %>% 
  textConnection() %>%
  read.csv(header = T, sep = '\t') %>%
  head()
# 3
url(url_d) %>% read.csv(sep = '\t') %>% head()
# 4
read.table(url_d, header = T) %>% head()
# 5 read_csv with delim
read_delim(url_d, delim = '\t') %>% head()
