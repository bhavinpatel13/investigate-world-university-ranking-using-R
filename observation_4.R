mydata <- read.csv("D:/LAKEHEAD WINTER 2019/DATA SCI/project/timesData.csv")
View(mydata)

#data has teching < 50  

  a<- nrow(mydata[mydata$teaching< 50,])
  a
