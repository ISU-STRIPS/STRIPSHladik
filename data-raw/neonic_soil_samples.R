library(dplyr)

neonic_soil_samples <- readr::read_csv("neonic_soil_samples.csv") %>%
  
  #Capitalize first letter of sites
  mutate(site = Hmisc::capitalize(site)) %>%
  
  #Format dates
  mutate(date = as.Date(as.character(date), "%Y%m%d")) %>%
  
  #remove units from column names (in Readme)
  rename(mass = mass_g, vol = vol_L) %>%
  
  #update surrogate_percentrecovery_imidacloprid_d4 column name
  rename(surrogate_percent_recovery_imidacloprid_d4 = surrogate_percentrecovery_imidacloprid_d4)

devtools::use_data(neonic_soil_samples)