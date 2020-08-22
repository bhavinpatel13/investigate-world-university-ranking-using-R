#Histogram with density distribution function
mydata <- read.csv("D:/LAKEHEAD WINTER 2019/DATA SCI/project/timesData.csv")
View(mydata)
a<- ggplot(data=mydata, aes(student_staff_ratio)) + geom_histogram(aes(y=..density..)) +
  geom_density(aes(x=student_staff_ratio))  + geom_rug(aes(x=student_staff_ratio))

a


