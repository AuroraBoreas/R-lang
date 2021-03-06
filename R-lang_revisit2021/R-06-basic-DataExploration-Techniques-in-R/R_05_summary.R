library(tidyverse)

src <- "/Users/zhangliang/Desktop/R-00-exercise/Data/StudyArea.csv"
df <- read_csv(src, 
               col_types=list(UNIT=col_character()),
               col_names=TRUE) %>%
      select(ORGANIZATI, STATE, YEAR_, TOTALACRES, CAUSE) %>%
      filter(TOTALACRES>=1000)


df %>% summary(TOTALACRES)