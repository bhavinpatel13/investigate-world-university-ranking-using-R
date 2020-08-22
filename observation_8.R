x <- read.csv("D:/LAKEHEAD WINTER 2019/DATA SCI/project/cwurData.csv")

f <- x[sample(nrow(x)),]
x_train <- f[1:2000, ]
x_test <- f[2001:2200, ]
library(rpart)
model <- rpart(x$world_rank ~ x$patent
               +x$alumni_employment
               +x$citations
               +x$publications
               , data = x_train)
install.packages("rpart.plot")
install.packages("tree")
library(tree)
library(rpart.plot)
rpart.plot(model, digits = 2)