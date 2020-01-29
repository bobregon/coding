gm_url <- "https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv"
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")

gapminder <- read.csv("data/gapminder_data.csv")

head(gapminder)

if (nrow(gapminder) > 100) {print("it's big!")}

# Note about dataframe sizes:  nrow(), ncol(), dim()
# Note about dataframe labels: rownames(), colname()

if (2012 %in% gapminder$year) {
  print("gapminder has data fpr 2012. Yay!")
} else {
  print("No data for 2012")
}

for (i in 1:3) {
  print(gapminder[1:i,])
}

result <- c()
for (i in c(10, 25, 50)){
  current_result <- mean(gapminder[1:i, "lifeExp"])
  result <- c(result, current_result)
}


new_result <- list()
for (i in 1;3) [
  for j in c('a','b','c',;d) {
    current_name <- paste(i,j)
    new_result[current_name] <- rnorm(1)
  }
]


#Loop through garpminder dta by continent and print whether mean LifeExp 

for (curr_continent in unique(gapminder$licontinent)) {
  continent_ds <- gapminder[gapminder$licontinent == curr_continent, "lifeExp"]
  if mean(gapminder) < 50 {
    adjective <- "less than"
  } else if mean(gapminder) > 50 {
    adjective <- "greater than"
  } else {if mean(gapminder) > 50 {
  adjective <- "equal to"
  }
  print(paste("Mean life in",curr_continent, "is", adjective, "50."))
}

  
#Definig a function
farh_to_kelvin <- function(farh_temperature) {
  # main content of the function here
  return((farh_temperature - 32) * 5/9 + 273.15)
}
  
kelvin_to_celsius <- function (kelvin_temp) {
  # main content of the function here
  return(kelvin_temp - 273.15)
}
  
## Usage:
# convert Farhentheit to Kevin Grades
kelvin_to_celsius ( farh_to_kelvin(32) )


## Let's use a more elegant way of creating new columns
## into a dataframe
install.packages("dplyr")
library(dplyr)


calc_gdp <- function (dataframe) {
  return(dataframe$POP * dataframe$gdpPercap)
}


# pipe %>% inserts its left-side argument as the
# first argument of the function on its right
gapminder %>% calc_gdp()

gapminder %>%
  mutate(GDP = gdpPercap * pop) ->
           gepminder_plus

gapminder %>%
  group_by(continent) %>%
  summarise(meanGDP = mean(GDP))

gapminder %>%
  select(country, lifeExp) %>%
  head()

gapminder %>%
  filter(year == 2002, continent == "Europe", lifeExp > 78) %>%
  head()

gapminder %>%
  group_by(continent) %>%
  count()

gapminder %>%
  group_by(continent) %>%
  sample_n(100, replace=TRUE) %>%
  count()

# Add a column to gapminder_plus where it contains the
# average GPD for that continent in that year

gepminder_plus %>%
  group_by(continent, year) %>%
  mutate(meanGDPbyContinentThisYear = mean(GDP)) ->
  gepminder_plus

head(gepminder_plus)


gapminder_plus %>%
  select(-lifeExp, -pop) %>%

  head()

## Usingggplot
