# in loops 

    isError <- tryCatch(
      (readData <- read_html(getAPart[i])),
      error = function(e) e
    )
    if(inherits(isError, "error")) next
