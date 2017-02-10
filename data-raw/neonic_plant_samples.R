library(dplyr)

neonic_plant_samples <- readr::read_csv("neonic_plant_samples.csv") %>%
  
  #Capitalize first letter of sites
  mutate(site = Hmisc::capitalize(site)) %>%

  #Format dates
  mutate(date = as.Date(as.character(date), "%Y%m%d")) %>%
  
  #remove unit from mass_g column
  rename(mass = mass_g) %>%

  #update surrogate_percentrecovery_imidacloprid_d4 column name
  rename(surrogate_percent_recovery_imidacloprid_d4 = surrogate_percentrecovery_imidacloprid_d4)

devtools::use_data(neonic_plant_samples)