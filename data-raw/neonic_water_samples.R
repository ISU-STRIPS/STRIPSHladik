library(dplyr)

neonic_water_samples <- readr::read_csv("neonic_water_samples.csv") %>%
  
  #Capitalize first letter of sites
  mutate(site = Hmisc::capitalize(site)) %>%
  
  #Format dates (if no day provided, "01" inserted)
  mutate(date_start = ifelse(
    nchar(as.character(date_start)) == 6,
    paste(as.character(date_start), "01", sep=""), 
    as.character(date_start))
  ) %>%
  mutate(date_start = as.Date(date_start, "%Y%m%d")) %>%
  mutate(date_end = as.Date(as.character(date_end), "%Y%m%d")) %>%
  
  #remove units from column names (in Readme)
  rename(vol = vol_L) %>%
  
  #update surrogate_percentrecovery_imidacloprid_d4 column name
  rename(surrogate_percent_recovery_imidacloprid_d4 = surrogate_percentrecovery_imidacloprid_d4)

devtools::use_data(neonic_water_samples)