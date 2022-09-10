# MechaCar_Statistical_Analysis
## Goal of Analysis
**To make more effiecient production and manufacturing of AutosRUs' newest prototype by means of analytics on the production data.**
### Methods
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the PSI of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study that ompares vehicle performance of MechaCar vehicles comparing vehicle performance data from competitors
### Tools
* IDE: `RStudio and R`

* Packages: `tidyverse, dplyr, ggplot2`

## Linear Regression to Predict MPG
* Data from the `MechaCar_mpg.csv` file was imported and placed in the active directory in the R session.


![image](https://user-images.githubusercontent.com/103383489/189496172-8828a7f9-088b-4945-b659-1f948120953f.png)

* The library() function was used to load the `dplyr` package. `MechaCar_mpg.csv` file was read and imported as a dataframe.

![image](https://user-images.githubusercontent.com/103383489/189496362-28a01d80-ae0f-4080-bb2f-d138b8fd8d08.png)


* A linear regression was performed using the lm() function. Using the lm() function, six variables (`vehicle_length` `vehicle_weight` `spoiler_angle` `ground_clearance` `AWD` and `mpg`) were passed through and added to the dataframe.

![image](https://user-images.githubusercontent.com/103383489/189496267-ab35a6b9-2048-432e-9cd5-df6903953d1d.png)

* The summary function was called on the regression.

![image](https://user-images.githubusercontent.com/103383489/189496771-48601904-c55a-41aa-b8fa-404933c9a9fe.png)


* In the summary output, each `Pr(>|t|)` value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, intercept, **vehicle_length** and **ground_clearance** are statistically unlikely to provide random amounts of variance to the linear model. **In other words the vehicle_length and ground_clearance have a significant impact on MPG.**

* The significance level is the probability of rejecting the null hypothesis when it is true. A significance level of 0.05 indicates a 5% risk of concluding that a difference exists when there is no actual difference. Our p-value for this regression is `p-value: 5.35e-11` which is smaller than a standard significance level of .05. This indicates that the slope of the linear model is not zero and our probability of rejecting the null hypothesis when it is true is low. 

*  Our r-squared value shows how well the data fits the regression model (the goodness of fit). The r-squared value in our regression model is 0.7149 (71.5%) indicating that our model **predicts MPG of the protoype to a relatively effective degree**.

## Summary Statistics on Suspension Coils

### Summary on PSI

![image](https://user-images.githubusercontent.com/103383489/189498744-a9a40038-ffa4-4dd5-80b0-8e09de0c040a.png)

### GroupBy Manufacturing Lot on PSI

![image](https://user-images.githubusercontent.com/103383489/189498761-ffc612a9-b69b-4c68-ac6c-f1e6822bbc1b.png)

* **The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?** 
* For all Manufacturing Lots in total, the variance of PSI of suspension coils is: 62.29. This meets the design specification.
* For each lot, Lot 1's and Lot 2's variance meets design specification: 0.98 and 7.5 PSI, respectively. However, **Lot 3 does not meet design specifications at 170.3 PSI.**



