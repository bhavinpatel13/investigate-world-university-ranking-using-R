x <- read.csv("D:/LAKEHEAD WINTER 2019/DATA SCI/project/cwurData.csv")
Data<-na.omit(x)
library(rpart)
library(tree)
set.seed(101)
alpha<-0.7
train<-sample(1:nrow(Data),alpha*nrow(Data))
train.set<-Data[train,]
test.set<-Data[-train,]
tree.model<-rpart(Data$world_rank ~ Data$score+Data$quality_of_education+Data$national_rank)
install.packages("rattle")
install.packages("RColorBrewer")
library(rattle)
library(RColorBrewer)
plot(tree.model)
text(tree.model)
fancyRpartPlot(tree.model)