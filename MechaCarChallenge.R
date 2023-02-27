#load the dplyr library
library(dplyr)

#read in the data from the csv
#NOTE: adjust the file path based on your working directory
MechaCarData <- read.csv(file = "resources/MechaCar_mpg.csv")

#linear regression
reg <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarData)

#summary statistics
summary(reg)

#read in the suspension coil data
SuspensionCoilData <- read.csv(file = "resources/Suspension_Coil.csv")

#summary statistics of the entire dataset
total_summary <- summarise(SuspensionCoilData, mean = mean(PSI), median = median(PSI), sd = sd(PSI), variance = var(PSI))

total_summary

#summary statistics broken down by lot
lot_summary <- SuspensionCoilData %>% group_by(Manufacturing_Lot) %>% summarise(mean = mean(PSI), median = median(PSI), sd = sd(PSI), variance = var(PSI))

lot_summary

#T-Test for suspension coils
PSIpopulation <- SuspensionCoilData[['PSI']]
mean <- mean(PSIpopulation)
t.test()