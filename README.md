# DEMOGRAPHY & POPULATION IN INDONESIA 
This statistical data simulation analysis or demo data on population and demographics in Indonesia aims to study the quantity and distribution of society. Data collection from [Worldometer](https://www.worldometers.info/world-population/indonesia-population/) with direct data, but my project only makes visual innovation of data.

## Population Largest Cities in Indonesia 
### Create Data Base 
```py
import pandas as pd
import csv

# import data from csv 
datapopulation = pd.read_csv("/Users/mymac/Desktop/Data Github/datapopulation.csv", delimiter=';', header = None) # adjust columns and rows
datapopulation.columns = ['Cities', 'Population'] create columns
datapopulation = datapopulation.iloc[1:]
```
### Result Data Population Indonesia 2024
```py
print(datapopulation)
             Cities Population
1           Jakarta  8,540,121
2          Surabaya  2,874,314
3            Bekasi  2,564,940
4           Bandung  2,444,160
5             Medan  2,435,252
6             Depok  2,056,400
7         Tangerang  1,911,914
8         Palembang  1,668,848
9          Semarang  1,653,524
10         Makassar  1,423,877
11  South Tangerang  1,365,688
12           Jepara  1,257,912
13   Bandar Lampung  1,166,066
14            Batam  1,164,352
15            Bogor  1,099,422
16        Pekanbaru  1,085,000
17           Padang     90,904
18           Malang     84,381
19        Samarinda     83,146
20         Denpasar    725,314
21       Balikpapan    695,287
22           Serang    692,101
23        Situbondo    685,967
24        Pontianak    658,685
25      Banjarmasin    657,663
26       Jambi City      6,062
27           Cimahi      5,684
28        Surakarta    522,364
29           Manado    451,916
30           Kupang    442,758

```
### Retrieving Indonesia Coordinate Data 
```py
import geopandas as gpd

# download data from natural data earth site
world = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_110m_admin_0_countries.shp")
world = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_110m_admin_0_countries.dbf")
world = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_110m_admin_0_countries.shx")

# filter data to Indonesia geo
Indonesia = world[world['SOVEREIGNT'] == 'Indonesia'] 

#indonesia geometry centroid data 
Indonesia_centroid = indonesia.geometry.centroid
latitude = Indonesia_centroid.y.values[0]
longitude = Indonesia_centroid.x.values[0]

# coordinate indonesia
print("Latitude:", latitude)
Latitude: -2.221737936520542

print("Longitude:", longitude)
Longitude: 117.42340756227364
```

### Retrieving Indonesia Cities Coordinate Data
```py
import geopandas as gpd

citiesidn = gpd.read_file("/Users/mymac/Desktop/Data Github/ne_10m_populated_places_simple.shp")
citiesidn['Latitude'] = cities.geometry.y
citiesidn['Longitude'] = cities.geometry.x
cities_df = cities[['NAME(cities)', 'Latitude', 'Longitude']]

print(cities_df)
  No Cities    Latitude  Longitude 
   <dbl> <chr>     <chr>     <chr>     
      1 Jakarta   -6.175247 106.827049
      2 Surabaya  -7.245972 112.737827
      3 Bekasi    -6.234986 106.994544
      4 Bandung   -6.921553 107.611021
      5 Medan     3.589665  98.673826 
      6 Depok     -6.407190 106.815837
      7 Tangerang -6.176192 106.638216
      8 Palembang -2.988824 104.756851
      9 Semarang  -6.990399 110.422910
     10 Makassar  -5.134296 119.412428
# ℹ 20 more rows
# Combine data population with data longitude and latitude
# Data cities population and Latitude,Longitude

datapopulation = {
    'Cities': ['Jakarta', 'Surabaya', 'Bekasi', 'Bandung', 'Medan', 'Depok', 'Tangerang', 'Palembang', 'Semarang',
               'Makassar', 'South Tangerang', 'Jepara', 'Bandar Lampung', 'Batam', 'Bogor', 'Pekanbaru', 'Padang',
               'Malang', 'Samarinda', 'Denpasar', 'Balikpapan', 'Serang', 'Situbondo', 'Pontianak', 'Banjarmasin',
               'Jambi City', 'Cimahi', 'Surakarta', 'Manado', 'Kupang'],
    'Latitude': [-6.175247, -7.245972, -6.234986, -6.921553, 3.589665, -6.407190, -6.176192, -2.988824, -6.990399,
                 -5.134296, -6.322702, -6.589915, -5.446071, 1.103082, -6.596299, 0.526246, -0.924759, -7.977131,
                 -0.501780, -8.652497, -1.239871, -6.105497, -7.706784, -0.022690, -3.324740, -0.037687, -6.873153,
                 -7.569249, 1.490058, -10.163221],
    'Longitude': [106.827049, 112.737827, 106.994544, 107.611021, 98.673826, 106.815837, 106.638216, 104.756851,
                  110.422910, 119.412428, 106.708574, 110.667299, 105.264374, 104.038370, 106.797242, 101.451573,
                  100.363256, 112.634027, 117.139309, 115.216667, 116.859338, 105.988471, 114.005414, 109.344749,
                  114.597505, 109.314475, 107.542310, 110.828448, 124.840871, 123.601776],
    'Population': [8540121, 2874314, 2564940, 2444160, 2435252, 2056400, 1911914, 1668848, 1653524, 1423877,
                   1365688, 1257912, 1166066, 1164352, 1099422, 1085000, 909040, 843810, 831460, 725314, 695287,
                   692101, 685967, 658685, 657663, 606200, 568400, 522364, 451916, 442758]
}

cities_df = pd.DataFrame(datapopulation)

```


### Indonesia Cities Population in 2024
```py
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(50, 30))  # size 

# Plot  Indonesia
Indonesia.plot(ax=ax, color='#a6cee3', edgecolor='black')

#  colormap
cmap = plt.colormaps['plasma']

# normalization data population
norm = plt.Normalize(vmin=gdf_cities['Population'].min(), vmax=gdf_cities['Population'].max())

# plot for city with deffent such as population
gdf_cities.plot(ax=ax, color=cmap(norm(gdf_cities['Population'])),
                marker='o', markersize=gdf_cities['Population'] / 100000, 
                label='Population', alpha=0.7)

# add colorbar for showing skala population
sm = plt.cm.ScalarMappable(cmap=cmap, norm=norm)
sm.set_array([])
cbar = fig.colorbar(sm, ax=ax, orientation='horizontal', fraction=0.03, pad=0.04)
cbar.set_label('Population')

# add title
plt.title("Population of Major Cities in Indonesia", fontsize=20)

#legenda delete text label city and just show legend
plt.legend(['City Population'], loc='lower left')

# show map
plt.show()

```
![Indonesia Population Cities](datavisual/citiespopulationidn.png)

### Cities Population Indonesia 
Distribution of Cities by Population: Notice how cities with higher populations (indicated by larger dots and lighter colors) are spread across Indonesia. Based on the map, large cities with high populations are generally located in Java, Sumatra, and Sulawesi. Concentration in Java: It appears that many cities with large populations are located in Java (such as Jakarta, Surabaya, and Bandung). This indicates a concentration of population on this island.

## [The Population Census in Indonesia](https://www.bps.go.id/en/statistics-table/2/MTk3NSMy/jumlah-penduduk-pertengahan-tahun--ribu-jiwa-.html)
This section makes a basic analysis to display the population census in Indonesia from 2016 to 2024, data collection from the Central Statistics Agency of Indonesia.

### Data Base 
```py
import pandas as pd
import csv 

# import dataset 
datapopulationcensus = pd.read_csv("/Users/mymac/Desktop/Data Github/datapopulationcensus.csv", delimiter=';', header = None)
datapopulationcensus = datapopulationcensus.iloc[1:]
datapopulationcensus.columns = ['Years', 'Census']
print(datapopulationcensus)

 Years   Census
1   2015  255.587
2   2016  258.496
3   2017  261.355
4   2018  264.161
5   2019  266.911
6   2020  270.209
7   2021  272.682
8   2022  275.773
9   2023  278.696
10  2024  281.603

# if create data frame
datapopulationcensus = pd.Data.Frame({
  'Year': [2015,2016,2017,2018,2019,2020,2021,2022,2023,2024],
  'Census':[255.587,258.496,261.355,264.161,266.911,270.209,272.682,275.773,278.696,281.603]
})
```
### Population Growth 2015-2024
```py
## if want create line visual basic graph
import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10, 6))
plt.plot(datapopulationcensus['Years'], datapopulationcensus['Census'],
color ='b', linewidth=2)

plt.fill_between(datapopulationcensus['Years'], datapopulationcensus['Census'],
color ='blue', alpha = 0.1)

plt.title('Population Growth 2015-2024')
plt.xlabel('Year')
plt.ylabel('Population')
plt.show()


# visual from plotly.graph
import plotly.graph_objects as go

fig = go.Figure()
fig.add_trace(go.Scatter(
  x=datapopulationcensus['Years'],
  y=datapopulationcensus['Census'],
  mode='lines',
  line=dict(color='red'),
  fill = 'tozeroy',
  name ='Population Growth'))

fig.update_layout(title="Indonesia Population Growth 2015-2024",
xaxis_title="Years",
yaxis_title="Population",
template="simple_white")

fig.show()

```
![Indonesia Population](datavisual/indonesiapopulationgrowth.png)

### Indonesia Population Growth
The population of Indonesia from 2015 to 2024 continues to increase, with a stable growth trend. The government needs to prepare policies to accommodate growth, especially those that impact people's welfare.

## Indonesia Population Projection 2020-2100
This section also makes an analysis of the population projection of Indonesia from 2020 to 2100, data collection form [Country Meters](https://countrymeters.info/en/Indonesia) Purpose of Population Projections Population projections in the field of demography are estimates of the population in the future.
### Data Base
```py
import pandas as pd
import csv

# import data 
populationprojection = pd.read_csv("/Users/mymac/Desktop/Data Github/populationprojection.csv", delimiter=';', header = None)

populationprojection = populationprojection.iloc[1:]
populationprojection.columns = ["Years", "Population"]

populationprojection = pd.DataFrame({
    'Years': [2020, 2025, 2030, 2035, 2040, 2045, 2050, 2055, 2060, 2065, 
              2070, 2075, 2080, 2085, 2090, 2095, 2100],
    'Population': [272222982, 284751033, 295595241, 304758617, 312134190, 
                   317731990, 321550683, 323790913, 324704160, 324574724, 
                   323652781, 322033596, 319781249, 316961616, 313660545, 
                   309025670, 306025531]
})

print(populationprojection)
 Years  Population
0    2020   272222982
1    2025   284751033
2    2030   295595241
3    2035   304758617
4    2040   312134190
5    2045   317731990
6    2050   321550683
7    2055   323790913
8    2060   324704160
9    2065   324574724
10   2070   323652781
11   2075   322033596
12   2080   319781249
13   2085   316961616
14   2090   313660545
15   2095   309025670
16   2100   306025531

```
### Population Projection Indonesia 2020-2100
```py

# Creaate visual basic graph

import pandas as pd
import matplotlib.pyplot as plt

plt.figure(figsize=(10, 6))
plt.plot(populationprojection['Years'],populationprojection['Population'],
color= 'b', linewidth=2)

plt.fill_between(populationprojection['Years'],populationprojection['Population'],
color = 'blue', alpha =0.1)
plt.title("Population Projection 2020-2100")
plt.xlabel('Year')
plt.ylabel('Population')
plt.show()

import pandas as pd
import plotly.graph_objects as go

# graph with plotly
fig = go.Figure()
fig.add_trace(go.Scatter(
    x=populationprojection['Years'],
    y=populationprojection['Population'],
    mode='lines',  # Garis dan titik data
    line=dict(color='red'),
    fill='tozeroy',  # Mengisi area di bawah garis
    name='Population Growth'
))

# setting layout
fig.update_layout(
    title="Indonesia Population Projection 2020-2100",
    xaxis_title="Years",
    yaxis_title="Population",
    template="simple_white"
)

fig.update_xaxes(
  tickmode='linear',
  dtick=5
)
# show graph
fig.show()

```
![Indonesian Population Projection](datavisual/idnprojection2020-2100.png)
### Indonesia Projection Population 2020 to 2100
This graph shows that Indonesia will experience rapid population growth almost in the middle of the century, but after that the population will decline. For example, from 2020 to 2060 population growth will be very stable, and from 2060 to 2100 the population will decline, which has implications for employment challenges, social needs, and public policy.

## Indonesia Population Gender
This section is for the analysis of the population gender between Men and Women in Indonesia from 2018 to 2023. And I collect data from [Central Bureau of Statistics of Indonesia](https://www.bps.go.id/en/statistics-table/3/WVc0MGEyMXBkVFUxY25KeE9HdDZkbTQzWkVkb1p6MDkjMw==/population-by-age-groups-and-sex.html?year=2023).

### Create Manual Data Base or Data Frame 
``` py

import pandas as pd
 
genderpopulation = {
    'Year': [2018, 2019, 2020, 2021, 2022, 2023],
    'Man': [133.136, 143.657, 136.611, 137.871, 139.388, 140.786],
    'Woman': [131.879, 133.416, 133.545, 134.811, 136.384, 137.909]
}

genderpopulation = pd.DataFrame(genderpopulation)

```
### Indonesia Population Gender Analysis 

```py
import plotly.graph_objects as go

fig = go.Figure()

# add man population horizontal bar (negative point for section left)
fig.add_trace(go.Bar(
    y=genderpopulation['Year'],
    x=[-1 * val for val in genderpopulation['Man']],  # negative point for bar left
    orientation='h',
    name='Man',
    marker=dict(color='blue'),
    text=[f"{val} M" for val in genderpopulation['Man']],  #add population label
    textposition='inside'  #  text position in the bar
))

#  add woman population for bar horizontal
fig.add_trace(go.Bar(
    y=genderpopulation['Year'],
    x=genderpopulation['Woman'],  # positive point in right
    orientation='h',
    name='Woman',
    marker=dict(color='red'),
    text=[f"{val} M" for val in genderpopulation['Woman']],  # add label population
    textposition='inside'  # position text in the bar 
))

# setting 
fig.update_layout(
    title='Gender Populationin Indonesia 2018-2023', 
    xaxis=dict(
        title='Population (in millions)',
        tickvals=[-150, -100, -50, 0, 50, 100, 150],
        ticktext=['150', '100', '50', '0', '50', '100', '150'],
    ),
    yaxis=dict(
        title='Year',
        tickmode='array',
        tickvals=genderpopulation['Year'],
        ticktext=genderpopulation['Year']
    ),
    barmode='relative',
    bargap=0.1,
    plot_bgcolor='white'
)

# show plot
fig.show()


```
![Indonesia Demography Data](datavisual/genderpopulation.png)

### Gender Population 2018-2023
By looking at this visual, you can calculate the gender or compression between the Male and Female population in each year. If you have data from 2018, the male population was 133.136 million and the female population was 131.879 million. In 2019, the male population increased to 143.657 million and the female population to 133.416 million. In 2020 to 2023 there was a fluctuation, but the trend shows a slight increase in both sexes.

## [Indonesia Population by Age Group and Gender](https://www.bps.go.id/en/statistics-table/3/WVc0MGEyMXBkVFUxY25KeE9HdDZkbTQzWkVkb1p6MDkjMw==/population-by-age-groups-and-sex.html?year=2018)
### Data Frame & Data Base

```r

library(readxl)
populationgroupage <- read_excel("~/Desktop/Data Github/populationgroupage.xlsx")
View(populationgroupage)
print(populationgroupage, n=96) # view all rows and columns

| Year|Group Age |    Man|   Women|
|----:|:---------|------:|-------:|
| 2023|0-4       | 114993| 11012  |
| 2023|5-9       | 112376| 10762  |
| 2023|10-14     | 113165| 10746  |
| 2023|15-19     | 114197| 10714  |
| 2023|20-24     | 114897| 10871  |
| 2023|25-29     | 115091| 10986  |
| 2023|30-34     | 112439| 10845  |
| 2023|35-39     | 108341| 10570  |
| 2023|40-44     | 102743| 10130  |
| 2023|45-49     |  95442|  9514  |
| 2023|50-54     |   8415|  8450  |
| 2023|55-59     |  71333|  7231  |
| 2023|60-64     |   5676|  5813  |
| 2023|65-69     |  41839|  4344  |
| 2023|70-74     |  26951|  2920  |
| 2023|75+       |  23142|  2993  |
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

```
### Analysis Graph Indonesia Population by Age Group and Gender 

```r




```
