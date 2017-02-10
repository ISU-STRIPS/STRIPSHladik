library(dplyr)

neonic_water_samples <- readr::read_csv("neonic_water_samples.csv")
devtools::use_data(neonic_water_samples)