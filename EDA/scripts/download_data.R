#### Preamble ####
# Purpose: Downloads and saves the data from Inside Airbnb
# Author: Alaina Hu
# Date: 04 March 2024 
# Contact: alaina.hu@utoronto.ca 
# License: MIT



#### Workspace setup ####
#install.packages("tidyverse")
#install.packages("haven")
library(tidyverse)
library(haven)

#### Download data ####
url <-
  paste0(
    "http://data.insideairbnb.com/france/ile-de-france/paris/2023-12-12/data/listings.csv.gz"
  )

airbnb_data <-
  read_csv(
    file = url,
    guess_max = 20000
  )

write_csv(airbnb_data, "airbnb_data.csv")

airbnb_data
