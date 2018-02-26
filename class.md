# Классы 
Все переменные в R **принадлежат** определенному классу. Основные классы:
* numeric
* complex
* integer
* character
* logical
* factor
* list
* function
* matrix
* data.frame
* NULL
* array
* formula
* environment
* expression
* raw 
* call

Чтобы узнать класс, необходимо воспользоваться функцией **class():**
```r
class(5) # numeric
class(5L) # integer
class(matrix(1:20)) # matrix 
class('5') # character
class(c(T,F,T)) # logical
```
Кроме того, у переменных существует внутренний тип, который можно определить с помощью оператора **typeof**: 
```r
typeof(5L) == class(5L) # TRUE
typeof(5) == class(5) # FALSE, так как typeof возвращает "double"
typeof(Inf) == class(Inf) # FALSE
```
Для тестирования принадлежности к определенному классу есть набор **is-функций**. Получить его можно командой:
```r
is(5, 'numeric') # TRUE, базовая фукнция 
ls(pattern = "^is", baseenv()) # полный список

# [1] "is.array"                "is.atomic"               "is.call"                 "is.character"            "is.complex"             
# [6] "is.data.frame"           "is.double"               "is.element"              "is.environment"          "is.expression"          
# [11] "is.factor"               "is.finite"               "is.function"             "is.infinite"             "is.integer"             
# [16] "is.language"             "is.list"                 "is.loaded"               "is.logical"              "is.matrix"              
# [21] "is.na"                   "is.na.data.frame"        "is.na.numeric_version"   "is.na.POSIXlt"           "is.na<-"                
# [26] "is.na<-.default"         "is.na<-.factor"          "is.na<-.numeric_version" "is.name"                 "is.nan"                 
# [31] "is.null"                 "is.numeric"              "is.numeric_version"      "is.numeric.Date"         "is.numeric.difftime"    
# [36] "is.numeric.POSIXt"       "is.object"               "is.ordered"              "is.package_version"      "is.pairlist"            
# [41] "is.primitive"            "is.qr"                   "is.R"                    "is.raw"                  "is.recursive"           
# [46] "is.single"               "is.symbol"               "is.table"                "is.unsorted"             "is.vector"              
# [51] "isatty"                  "isBaseNamespace"         "isdebugged"              "isIncomplete"            "isNamespace"            
# [56] "isNamespaceLoaded"       "isOpen"                  "isRestart"               "isS4"                    "isSeekable"             
# [61] "isSymmetric"             "isSymmetric.matrix"      "isTRUE" 
```
