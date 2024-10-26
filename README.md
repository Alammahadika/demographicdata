# DEMOGRAPHY & POPULATION IN INDONESIA 
This statistical data simulation analysis or demo data on population and demographics in Indonesia aims to study the quantity and distribution of society. Data collection from [Worldometer](https://www.worldometers.info/world-population/indonesia-population/) with direct data, but my project only makes visual innovation of data.

## Population Largest Cities in Indonesia 
### Create Data Base 
```pyhton
import geopandas as gpd
import matplotlib.pyplot as plt
import pandas as pd
import csv

# data from natural earth
world = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_110m_admin_0_countries.shp")
world = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_110m_admin_0_countries.dbf")
world = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_110m_admin_0_countries.shx")

# import data from csv 


```
