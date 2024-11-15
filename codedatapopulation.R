# Indonesia Population Gender by Age

library(readxl)
populationgroupage <- read_excel("~/Desktop/Data Github/populationgroupage.xlsx")
View(populationgroupage)
print(populationgroupage, n=96) # view all rows and columns

| Year|Group Age |    Man|   Women|
  |----:|:---------|------:|-------:|
  | 2023|0-4       | 11499 | 11012  |
  | 2023|5-9       | 11237 | 10762  |
  | 2023|10-14     | 11316 | 10746  |
  | 2023|15-19     | 11316 | 10714  |
  | 2023|20-24     | 11489 | 10871  |
  | 2023|25-29     | 11509 | 10986  |
  | 2023|30-34     | 11243 | 10845  |
  | 2023|35-39     | 10834 | 10570  |
  | 2023|40-44     | 10274 | 10130  |
  | 2023|45-49     |  9544 |  9514  |
  | 2023|50-54     |  8415 |  8450  |
  | 2023|55-59     |  7133 |  7231  |
  | 2023|60-64     |  5676 |  5813  |
  | 2023|65-69     |  4183 |  4344  |
  | 2023|70-74     |  2695 |  2920  |
  | 2023|75+       |  2314 |  2993  |
  | 2022|0-4       |  11303| 10790  |
  | 2022|5-9       |  11242| 10771  |
  | 2022|10-14     |  11356| 10732  |
  | 2022|15-19     |  11432| 10730  |
  | 2022|20-24     |  11553| 10937  |
  | 2022|25-29     |  11485| 10977  |
  | 2022|30-34     |  11215| 10851  |
  | 2022|35-39     |  10743| 10504  |
  | 2022|40-44     |  10207| 10088  |
  | 2022|45-49     |   9378|  9348  |
  | 2022|50-54     |   8240|  8259  |
  | 2022|55-59     |   6945|  7016  |
  | 2022|60-64     |   5486|  5575  |
  | 2022|65-69     |   4035|  4163  |
  | 2022|70-74     |   2530|  2739  |
  | 2022|75+       |   2232|  2897  |
  | 2021|0-4       |  11280| 10765  |
  | 2021|5-9       |  11249| 10775  |
  | 2021|10-14     |  11392| 10723  |
  | 2021|15-19     |  11445| 10755  |
  | 2021|20-24     |  11588| 10989  |
  | 2021|25-29     |  11434| 10947  |
  | 2021|30-34     |  11155| 10818  |
  | 2021|35-39     |  10633| 10412  |
  | 2021|40-44     |  10109| 10009  |
  | 2021|45-49     |   9191|  9163  |
  | 2021|50-54     |   8050|  8061  |
  | 2021|55-59     |   6740|  6791  |
  | 2021|60-64     |   5280|  5337  |
  | 2021|65-69     |   3860|  3968  |
  | 2021|70-74     |   2345|  2546  |
  | 2021|75+       |   2112|  2748  |
  | 2020|0-4       |  11293| 10778  |
  | 2020|5-9       |  11295| 10799  |
  | 2020|10-14     |  11449| 10746  |
  | 2020|15-19     |  11495| 10816  |
  | 2020|20-24     |  11632| 11050  |
  | 2020|25-29     |  11410| 10945  |
  | 2020|30-34     |  11109| 10795  |
  | 2020|35-39     |  10556| 10354  |
  | 2020|40-44     |  10014|  9928  |
  | 2020|45-49     |   9025|  8996  |
  | 2020|50-54     |   7872|  7874  |
  | 2020|55-59     |   6546|  6574  |
  | 2020|60-64     |   5091|  5117  |
  | 2020|65-69     |   3681|  3772  |
  | 2020|70-74     |   2179|  2374  |
  | 2020|75+       |   2007|  2617  |
  | 2019|0-4       |  12044| 11560  |
  | 2019|5-9       |  12234| 11739  |
  | 2019|10-14     |  11824| 11232  |
  | 2019|15-19     |  11406| 10888  |
  | 2019|20-24     |  11167| 10750  |
  | 2019|25-29     |  10690| 10537  |
  | 2019|30-34     |  10320| 10261  |
  | 2019|35-39     |  10058| 10207  |
  | 2019|40-44     |   9679|  9687  |
  | 2019|45-49     |   8876|  8817  |
  | 2019|50-54     |   7699|  7739  |
  | 2019|55-59     |   6314|  6435  |
  | 2019|60-64     |   4895|  4923  |
  | 2019|65-69     |   3337|  3394  |
  | 2019|70-74     |   2027|  2357  |
  | 2019|75+       |   2080|  2886  |
  | 2018|0-4       |  12107| 11622  |
  | 2018|5-9       |  12199| 11679  |
  | 2018|10-14     |  11732| 11146  |
  | 2018|15-19     |  11378| 10864  |
  | 2018|20-24     |  11097| 10726  |
  | 2018|25-29     |  10630| 10494  |
  | 2018|30-34     |  10270| 10258  |
  | 2018|35-39     |  10017| 10164  |
  | 2018|40-44     |   9594|  9551  |
  | 2018|45-49     |   8718|  8657  |
  | 2018|50-54     |   7488|  7536  |
  | 2018|55-59     |   6120|  6205  |
  | 2018|60-64     |   4688|  4663  |
  | 2018|65-69     |   3141|  3224  |
  | 2018|70-74     |   1938|  2279  |
  | 2018|75+       |   2012|  2804  |
  
  
# Analysis Graph Indonesia Population by Age Group and Gender
  populationgroupage <-populationgroupage %>%
  mutate(`Group Age` = factor(`Group Age`, levels = c("0-4", "5-9", "10-14", "15-19", "20-24", "25-29", "30-34", 
                                                      "35-39", "40-44", "45-49", "50-54", "55-59", "60-64", 
                                                      "65-69", "70-74", "75")))

library(dplyr)
library(ggplot2)
library(patchwork)

# Filter data each year
data_2018 <-populationgroupage %>% filter(Year==2018)
data_2019 <-populationgroupage %>% filter(Year==2019)
data_2020 <-populationgroupage %>% filter(Year==2020)
data_2021 <-populationgroupage %>% filter(Year==2021)
data_2022 <-populationgroupage %>% filter(Year==2022)
data_2023 <-populationgroupage %>% filter(Year==2023)


plot_2018 <- ggplot(data_2018, aes(x = reorder(`Group Age`, -as.numeric(gsub("\\+", "", `Group Age`))))) +
  geom_bar(aes(y = Man, fill = "Man"), stat = "identity", position = "identity") +
  geom_bar(aes(y = -Women, fill = "Women"), stat = "identity", position = "identity") +
  scale_y_continuous(labels = abs) +
  labs(title = "2018",
       x = "Age Group",
       y = "Population",
       fill = "Gender") +
  theme_minimal() +
  coord_flip() +
  scale_fill_manual(values = c("Man" = "darkblue", "Women" = "darkred"))

plot_2019 <- ggplot(data_2019, aes(x = reorder(`Group Age`, -as.numeric(gsub("\\+", "", `Group Age`))))) +
  geom_bar(aes(y = Man, fill = "Man"), stat = "identity", position = "identity") +
  geom_bar(aes(y = -Women, fill = "Women"), stat = "identity", position = "identity") +
  scale_y_continuous(labels = abs) +
  labs(title = "2019",
       x = "Age Group",
       y = "Population",
       fill = "Gender") +
  theme_minimal() +
  coord_flip() +
  scale_fill_manual(values = c("Man" = "darkblue", "Women" = "darkred"))

plot_2020 <- ggplot(data_2020, aes(x = reorder(`Group Age`, -as.numeric(gsub("\\+", "", `Group Age`))))) +
  geom_bar(aes(y = Man, fill = "Man"), stat = "identity", position = "identity") +
  geom_bar(aes(y = -Women, fill = "Women"), stat = "identity", position = "identity") +
  scale_y_continuous(labels = abs) +
  labs(title = "2020",
       x = "Age Group",
       y = "Population",
       fill = "Gender") +
  theme_minimal() +
  coord_flip() +
  scale_fill_manual(values = c("Man" = "darkblue", "Women" = "darkred"))

plot_2021 <- ggplot(data_2021, aes(x = reorder(`Group Age`, -as.numeric(gsub("\\+", "", `Group Age`))))) +
  geom_bar(aes(y = Man, fill = "Man"), stat = "identity", position = "identity") +
  geom_bar(aes(y = -Women, fill = "Women"), stat = "identity", position = "identity") +
  scale_y_continuous(labels = abs) +
  labs(title = "2021",
       x = "Age Group",
       y = "Population",
       fill = "Gender") +
  theme_minimal() +
  coord_flip() +
  scale_fill_manual(values = c("Man" = "darkblue", "Women" = "darkred"))

plot_2022 <- ggplot(data_2022, aes(x = reorder(`Group Age`, -as.numeric(gsub("\\+", "", `Group Age`))))) +
  geom_bar(aes(y = Man, fill = "Man"), stat = "identity", position = "identity") +
  geom_bar(aes(y = -Women, fill = "Women"), stat = "identity", position = "identity") +
  scale_y_continuous(labels = abs) +
  labs(title = "2022",
       x = "Age Group",
       y = "Population",
       fill = "Gender") +
  theme_minimal() +
  coord_flip() +
  scale_fill_manual(values = c("Man" = "darkblue", "Women" = "darkred"))

plot_2023 <- ggplot(populationgroupage %>% filter(Year == 2023), aes(x = reorder(`Group Age`, -as.numeric(gsub("\\+", "", `Group Age`))))) +
  geom_bar(aes(y = Man, fill = "Man"), stat = "identity", position = "identity") +
  geom_bar(aes(y = -Women, fill = "Women"), stat = "identity", position = "identity") +
  scale_y_continuous(labels = abs) +
  labs(title = "2023", x = "Age Group", y = "Population", fill = "Gender") +
  theme_minimal() + coord_flip() +
  scale_fill_manual(values = c("Man" = "darkblue", "Women" = "darkred"))

# Arrange all plots in a single view with a main title

(plot_2018 | plot_2019) / (plot_2020 | plot_2021) / (plot_2022 | plot_2023) +
  plot_annotation(title = "Gender Population Indonesia 2018-2023",
                  theme = theme(plot.title = element_text(size = 15, face = "bold", hjust = 0.5))) 



# data jakarta population 

  library(tidyverse)
  library(sf)
  library(osmdata) # package for open street map

 jakarta_bb <-getbb("Jakarta, Indonesia")
  jakarta_osm <- opq(jakarta_bb) %>%
    add_osm_feature(key = "admin_level", value = "6") %>%
    osmdata_sf()
jakarta_boundaries <- jakarta_osm$osm_multipolygons


library(ggplot)

 jakartapopulation <- data.frame(
    Region = c("South Jakarta", "East Jakarta", "Central Jakarta", "West Jakarta", "North Jakarta"),
    Population = c(2235606, 3079618, 1049314, 2470054, 1808985)
  )
 
  jakarta_boundaries$Region <- c("South Jakarta", "East Jakarta", "Central Jakarta", "West Jakarta", "North Jakarta")
  jakarta_boundaries <- merge(jakarta_boundaries, jakartapopulation, by = "Region")
  
  ggplot() +
    geom_sf(data = jakarta_boundaries, aes(fill = Population), color = "black", size = 2) +
    scale_fill_viridis_b(option = "B") +
    theme_minimal() +
    labs(title = "Jakarta Population in 2023",
         fill = "Population")



  
