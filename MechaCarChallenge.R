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