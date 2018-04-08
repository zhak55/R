SturgesRule <- function(data) {
  if(!require('magrittr')) stop('Install `magrittr` library')
  length(data) %>% {1 + log2(.)} %>% round()
}
