# import libraries
library(dplyr)

# import and Read Mecha Car csv
mechacar <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Creating a multiple linear regression model for the dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)

# summarize the linear regression data
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar))

# import and read suspension coil csv
suscoil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# get the mean, median and SD of the suspension coil PSI
total_summary <- suscoil %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# create a dataframe grouping manufacturing lot by stats measures
lot_summary <- suscoil %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# create t.test to determine if sample is statistically different from the mean population
t.test((suscoil$PSI), mu = 1500)

# creating a t.test to determine the psi for each manufacturing lot
#Lot 1
t.test(subset(suscoil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
#Lot 2
t.test(subset(suscoil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
#Lot 3
t.test(subset(suscoil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
