library(tidyverse)

mechaCarData <- read.csv("Resources/MechaCar_mpg.csv") #Import the car data
head(mechaCarData)

model1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance, data = mechaCarData)#Model of multiple linear regression
summary(model1)

suspensionData <-  read.csv("Resources/Suspension_Coil.csv")#Import Coil Data
total_summary <- suspensionData %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD= sd(PSI), .groups= 'keep')#Create the summary table
total_summary

lot_summary <- suspensionData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD= sd(PSI), .groups= 'keep')#Summary table but grouping it by lots
lot_summary

sample_table <- suspensionData %>% sample_n(50)#Sampling 50 data points

t.test(sample_table$PSI, mu=mean(suspensionData$PSI))#Compare sample and population means

psi_sample_lot1 <- suspensionData%>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25) #Sample of 25 points with Lot 1
t.test(psi_sample_lot1$PSI, mu= mean(suspensionData$PSI))# Compare Lot 1 and population mean

psi_sample_lot2 <- suspensionData%>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25) #Sample of 25 points with Lot 2
t.test(psi_sample_lot2$PSI, mu= mean(suspensionData$PSI))# Compare Lot 2 and population mean

psi_sample_lot3 <- suspensionData%>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25) #Sample of 25 points with Lot 3
t.test(psi_sample_lot3$PSI, mu= mean(suspensionData$PSI))# Compare Lot 3 and population mean