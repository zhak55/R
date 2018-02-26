x <- 1:100
y <- 0.75 * x + rnorm(100)

data <- data.frame(x = x, y = y)

min.RSS <- function(data, par) {
  with(data, sum((par[1] + par[2] * x - y)^2))
}
result <- optim(par = c(0, 1), min.RSS, data = data)

plot(data)
abline(a = result$par[1], b = result$par[2], col = "blue")


# stochastic gradient descent 
library('sgd')

res <- sgd(y ~ x, model = 'glm', data = data) 
abline(a = res$coefficients[1], b = res$coefficients[2], col = "red")
