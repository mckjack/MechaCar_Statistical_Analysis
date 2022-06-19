# MechaCar_Statistical_Analysis
## Overview
The purpose of this challenge was to perform statistics and hypothesis testing on datasets using R coding language. The datasets included were from the automotive industry with reference to MechaCar's miles per gallon and suspension coils. 

## Linear Regression to Predict MPG
This is what we obtained,

![Image1](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable%20_1.png)

From this we can summarize the findings,
- We see from the image that Pr(>|t|) is the probability that the coefficient contributes random amount of variance to the linear model. From this we conclude that vehicle length and ground clearance provide a non-random amount of variance to our linear model.
- The multi linear model can be approximated to the following
> mpg = 6.27 * vehicle_length - 3.41 * AWD+ 3.55 * ground_clearance - 104
hence our slope is not zero.
- The R squared value is 0.71 therefore 71% of the variations in mpg can be explained by changes in the following variables such as vehicle weight, spoiler angle, and ground clearance. Hence that is a fairly efficient linear model to predict the MPG. We also have a p-value less than 0.05 which gives us insight that this data is efficient and credible. 
## Summary Statistics on Suspension Coils
We see that there is a slight difference between the summary statistics on all lots and each manufacturing lot in the following,
![Image2](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_2.png)

![Image3](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_2_1.png)

The question asked was, the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

For all the manufacturing lots we see there is a global variance of 62.3 PSI, meaning globablly the design specs are respected. However we see that only Lot 1 and 2 meet the design specs but Lot 3 does not with a variance of 170.3 PSI. 

## T-Tests on Suspension Coils
To summarize these tests, 

### T-test of all manufacturing lots against population mean

![image4](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_3_1.png)
- We see that our p-value is above the 0.05 threshold meaning the there is not enough evidence to reject the null hypothesis.

### T-test of each Manufacturing Lot 
#### Lot 1

![Image5](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_3_2.png)
#### Lot 2
![Image 6](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_3_3.png)
#### Lot 3
![Image 7](https://github.com/mckjack/MechaCar_Statistical_Analysis/blob/main/Images/Deliverable_3_4.png)

- For Lot 1 we can reject the null hypothesis since the p-value is below 0.05(significance level) therefore concluding the PSI across Lot 1 is statisically different from the population mean.
- For Lots 2 and 3 we have a p-value above 0.05, the null hypothesis can't be rejected therefore the PSI across Lot 2 and 3 are statistically similar to the population mean. 

## Study Design: MechaCar vs Competition
To compare the competition to the MechaCar we will dive into a statistical analysis on each of the following metrics listed,
- braking distance 
- safety rating
- horsepower
- The highest speed achievable 

The null hypothesis would state that the following metrics are statistically similar between both the MechaCar prototype and vehicles from the comptetition(other manufacturers).

To do this test we would do the one-way ANOVA (Analyis of Variance) test. This test commpares the means of all the continuous numerical variables listed above across more than two samples or groups. Hence we would compare means amongst the MechaCar prototype and the other competition. 

Therefore, to perform this test we would need access to all the MechaCar data and the competitions data merged into one dataframe, where the metrics listed above are the names of our columns. The data could be found using the internet or vehicle APIs such as https://www.high-mobility.com/car-api and others.

