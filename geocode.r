library(tibble)
library(dplyr)
library(tidygeocoder)
library(readr)
library(tidyr)

file <- ".\\data\\raw\\EBT_Restaurants.csv"
restaurants <- read_csv(file, col_types = "ccccccccc")

results <- restaurants %>%
  geocode(street = street_address, city = city, postalcode = zip_code,
          method = "osm")
