install.packages("tidyverse")
install.packages("jsonlite")
install.packages("ggplot2")

library(jsonlite)
library(tidyverse)
library(ggplot2)


### Assignment 1
# read in data frame
car_data_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# conduct linear regression model using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, car_data_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, car_data_df))

view(car_data_df)


### Assignment 2
# read in data frame
sus_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# create summary dataframe with summarize

total_summary <- sus_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# create a lot_summary table

lot_summary <- sus_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
view(lot_summary)


# run a t-test for all of the lots to determine if the PSI is statistically different from the pop mean of 1,500 pounds per square inch

t.test(log10(sus_table$PSI),mu=mean(log10(sus_table$PSI)))


# run a t test on each lot to see if they are statistically different from the population mean

t.test(subset(sus_table$PSI, sus_table$Manufacturing_Lot == "Lot1"),mu=mean(log10(sus_table$PSI)))
t.test(subset(sus_table$PSI, sus_table$Manufacturing_Lot == "Lot2"),mu=mean(log10(sus_table$PSI)))
t.test(subset(sus_table$PSI, sus_table$Manufacturing_Lot == "Lot3"),mu=mean(log10(sus_table$PSI)))
