library(dplyr)

neonic_plant_samples <- readr::read_csv("neonic_plant_samples.csv")
devtools::use_data(neonic_plant_samples)