# transfer files between folders
move <- function(from, to) {
  todir <- dirname(to)
  if (!isTRUE(file.info(todir)$isdir)) dir.create(todir, recursive=TRUE)
  file.rename(from = from,  to = to)
}
# get only files from current dir
files.only <- function() {
  library('magrittr')
  dir() %>% file.info() %>% {.[which(!.['isdir']), ]}
}
