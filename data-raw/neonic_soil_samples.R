library(dplyr)

neonic_soil_samples <- readr::read_csv("neonic_soil_samples.csv")
devtools::use_data(neonic_soil_samples)