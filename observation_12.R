install.packages("tidyverse")
library(tidyverse)
x <- read.csv("D:/LAKEHEAD WINTER 2019/DATA SCI/project/cwurData.csv")
x

data_canada<- filter(x, country=="Canada")




a1<-filter(data_canada, year=="2015")
a1<- select(a1, world_rank,national_rank,institution)
a1



