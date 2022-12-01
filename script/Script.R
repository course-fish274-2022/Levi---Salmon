
#loading

library(dplyr)

fish_data <- read.csv("data/Gaeta_etal_CLC_data_1.csv")

#create new column based on size

fish.data.cat <- fish_data %>%
  mutate(length.cat = ifelse(length > 300,"big", "small"))

#need to remove to remove the fish with a scalelength of less than 1
fish.data.cat.fixed <- fish.data.cat %>%
  filter(scalelength > 1)

