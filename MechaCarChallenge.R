#Deliverable 1

df <- read.csv("C:/Users/pepli/Desktop/Classwork/Module 15/MechaCar_mpg.csv")

#load packages
library(tidyverse)

library(dplyr)

df.regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=df)
summary(df.regression)

# Deliverable 2

coil_df <- read.csv("C:/Users/pepli/Desktop/Classwork/Module 15/Suspension_Coil.csv")

total_summary_df <- summarize(coil_df, mean(PSI), median(PSI), var(PSI), sd(PSI))

lot_summary_df <- group_by(coil_df, Manufacturing_Lot)

group_by_df <- summarize(lot_summary_df, mean(PSI), median(PSI), var(PSI), sd(PSI))
# Boxplot All
plt1 <- ggplot(coil_df, aes (y=PSI))
plt1 + geom_boxplot()

#Boxplot Individual Lot
plt2 <- ggplot(coil_df, aes(x=Manufacturing_Lot, y=PSI))
plt2 + geom_boxplot()

# Deliverable 3

# Summary of the t-test results across all manufacturing lots
t.test(coil_df$PSI,mu=1500)

# T-tests for individual lots
summary(coil_df$PSI)
# Creating Subsets
lot1 <- subset(coil_df, Manufacturing_Lot=="Lot1")
lot2 <- subset(coil_df, Manufacturing_Lot=="Lot2")
lot3 <- subset(coil_df, Manufacturing_Lot=="Lot3")
#T-Tests Individual
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
