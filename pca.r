library(devtools)
library(ggbiplot)
data(iris)


log.iris <- log(iris[, -5])
ir.species <- iris[, 5]
ir.pca <- prcomp(log.iris,
                 center = TRUE,
                 scale. = TRUE) 
print(ir.pca)
plot(ir.pca, type = "l")
summary(ir.pca)

ggbiplot(ir.pca, obs.scale = 1, var.scale = 1, ellipse = TRUE, 
         circle = TRUE, groups = as.factor(ir.species))
