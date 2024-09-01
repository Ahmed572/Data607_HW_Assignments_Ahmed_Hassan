library(dplyr)
library(lubridate)

rm(list = ls())


current_dir <- getwd()

print(current_dir)

relative_path <- "data/congress-demographics/data_aging_congress.csv"


file_path <- file.path(current_dir, relative_path)

url <- "https://raw.githubusercontent.com/fivethirtyeight/data/master/congress-demographics/data_aging_congress.csv"

congress_age_Data <- 0
congress_age_Data <- read.csv(url)


congress_age_Data <- read.csv(file_path)

print(congress_age_Data)

congress_age_Data[order(as.Date(congress_age_Data$start_date, format="%Y/%m/%d")),]
print(congress_age_Data)

congress_age_Data <- congress_age_Data %>%
  mutate(start_date = as.Date(start_date, format = "%Y-%m-%d"))



sort_by_start_date <- congress_age_Data %>%
  select(start_date, generation, age_years) %>%  
  arrange(start_date)

print(selected_columns)


group_by_generation <- congress_age_Data %>%
  select(generation, age_years) %>%
  group_by(generation) %>%
  summarize(
    average_age = mean(age_years, na.rm = TRUE),
    count = n()  
  )

print(group_by_generation)

