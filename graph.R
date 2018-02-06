library(tidyverse)

# using Varya Sveshnikova data
df <- read_csv('data.csv')
glimpse(df)


# grouped barplot
df %>%
  ggplot(aes(v.elision, fill = position)) +
  geom_bar(position = 'dodge') + 
  labs(title = 'Correlation between [v] elision and the type of phrasal position',
       y='number of cases')

# dotplot for crosstab
df %>%
  group_by(v.elision, position) %>%
  summarise(number = n()) %>%
  ggplot(aes(v.elision, position, label = number)) + 
  geom_point(aes(size=number), color='lightblue') +
  scale_size(range = c(10, 30)) +
  guides(size = F) +
  geom_text() + 
  labs(title = 'Correlation between [v] elision and the type of phrasal position',
       y='phrasal position', x='[v] elision')


