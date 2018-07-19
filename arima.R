library('forecast')
library('ggplot2')
library('gridExtra')
library('magrittr')

ts.sim <- arima.sim(list(order = c(1,1,0), ar = 0.5), n = 500) 

plot1 <- autoplot(ts.sim) + ylab(label = 'Source data')
plot2 <- autoplot(diff(ts.sim)) + ylab(label = 'First difference')
grid.arrange(plot1, plot2, nrow = 2)

# or if you need seasonal ARIMA models

ts.sim2 <-
  ts(rnorm(100), freq = 4) %>% 
  Arima(order = c(1,1,0), seasonal = list(order = c(1, 0, 0), period = 4)) %>%
  simulate.Arima(nsim=1000) 

  arimaplot1 <- autoplot(ts.sim2) + ggtitle(label = 'Arima(1,1,0)х(1,0,0)4')
  arimaplot2 <- ggseasonplot(ts.sim2, polar = TRUE)
  
  grid.arrange(arimaplot1, arimaplot2, nrow = 2, ncol = 1)
