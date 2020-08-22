install.packages("tm")
install.packages("wordcloud")
library(wordcloud)

#use the wordcloud library to visualize which country is mentioned most in year 0f 2011
a <- mydata$country[mydata$year == 2011]
wordcloud(a, min.freq = 500, random.order = FALSE)