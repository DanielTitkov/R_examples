library(tidyverse)

# using Varya Sveshnikova data
df <- read_csv('data.csv')
glimpse(df)

df %>%
  ggplot(aes(v.elision, fill = position)) +
  geom_bar(position = 'dodge') + 
  labs(title = 'Coorelation between [v] elision and the type of pharal position',
       y='number of cases')

