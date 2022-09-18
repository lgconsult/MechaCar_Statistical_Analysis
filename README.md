# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

The P scores for the different variables indicates their non-random amount of variance to mpgs. Our results show that the spoiler angle and all wheel drive had the highest amount of variance at .3069 and .1852 respectively. This means that the spoiler angle and all wheel drive had a statitically significant impact on MPG. All other variables had a score of less than .0776, meaning they did not have a significant impact on MPG.
![R Script for Linear Regression](https://github.com/lgconsult/MechaCar_Statistical_Analysis/blob/main/linear_regression_results.png)
The p value of our model is 5.35^-11 meaning it is not statistically significant. We can reject our null hypothesis because the slope is not equal to zero. It is not likely that our variables have zero impact on MPG.

The R squared value for our analysis is .7149 meaning our linear regression was successful 71% of the time in predicting MPG based on the independent variables of vehicle length, vehicle weight, spoiler angle, ground clearance and AWD. Because not many of the variables were statistically significant the model might need more data to accurately predict MPG in the future.

## Summary Stats on Suspension Coils

The following two tables summarize the the statistics of PSI for MechCar. 
![Overall Summary](https://github.com/lgconsult/MechaCar_Statistical_Analysis/blob/main/total_summary.png)
![Lot Summary](https://github.com/lgconsult/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)
The tables show that lot 3 has the highest variance PSI at 170.29, meaning they are far above the design specifications. Lot 3 is a clear outlier as the other two lots don't have a variance above 7.47. The overall data does show that MechaCar has met their design specifications, but the lot data demonstrates why subsetting our data is so important, to identify the outliers and possible issues in our manufacturing chain.


## T-Tests on Suspension Coils

The P Value on the overall data set was equal to 1 meaning we cannot reject our null hypothesis that all manufacturing lots are not statistically different from the population mean of 1500 PSI.  
![Overall T Test](https://github.com/lgconsult/MechaCar_Statistical_Analysis/blob/main/overall_t_test.png)
The P Value for our T test was less than .05 on all of our lot data meaning we can reject our null hypothesis and this means that the different plants are statistically different from the population mean of 1500 PSI.
![lot T test](https://github.com/lgconsult/MechaCar_Statistical_Analysis/blob/main/lot_t-test.png)

## Study Design: MechaCar vs Competition
We can compare MechaCar vehicles to those of the competition based on consumer preferences. We would set these preferences as our variables. These could be car cost, MPG, horse power, maintenance cost, or safety rating.
