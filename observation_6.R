install.packages("tidyverse")
library(tidyverse)
#create the object times_teaching_tscore containing the column name income and students staff ratio
times_teaching_score = mydata %>% 
    select(teaching , student_staff_ratio)
times_teaching_score


#print out from times_income_tscore object all the observation having teaching > 88 and student staff ratio> 10

times_teaching_score %>%  filter(teaching > 88, student_staff_ratio > 10)

  
