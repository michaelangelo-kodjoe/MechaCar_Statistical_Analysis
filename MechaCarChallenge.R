# import libraries
library(dplyr)

# import and Read Mecha Car csv
mechacar <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Creating a multiple linear regression for the dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)

# summarize the linear regression data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar))

# import and read suspension coil csv
suscoil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# get the mean, median and SD of the suspension coil PSI
total_summary <- suscoil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# create a dataframe grouping manufacturing lot by stats measures
lot_summary <- suscoil %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
