mydata <- read.csv("D:/LAKEHEAD WINTER 2019/DATA SCI/project/timesData.csv")
View(mydata)
mydata %>%
  group_by(year, country) %>%
  summarise(count = n()) %>%
  filter(country == "Canada") %>%
  ggplot(aes(country, count, fill = country)) + geom_bar(stat = "identity") +
  facet_wrap(~year) + geom_text(aes(label = count), vjust = -0.2) + 
  labs(title = "Number of Universities in Canada", y = "Number of Universities")