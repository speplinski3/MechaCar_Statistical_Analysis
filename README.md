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

* Packages: `tidyverse, dplyr, ggplot`

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

* For all Manufacturing Lots in total, the variance of PSI of suspension coils is: 62.29. This meets the design specification.
* For each lot, Lot 1's and Lot 2's variance meets design specification: 0.98 and 7.5 PSI, respectively. However, **Lot 3 does not meet design specifications at 170.3 PSI.** 

### Boxplot Visualization of PSI by Manufacturing Lot (Variance of Lot 3)

![image](https://user-images.githubusercontent.com/103383489/189501960-54d37cbe-f028-44ff-9037-289f0999bdb4.png)

## T-Tests on Suspension Coils

### One Sample T-Test Determining PSI Across All Lots (Against Population Mean of 1500 PSI)
![image](https://user-images.githubusercontent.com/103383489/189502104-47ad6085-1864-46d3-baf1-600d55b5a27e.png)

### 3 Additional T-Tests Determining PSI for Each Lot (Against Population Mean of 1500 PSI)

---

Lot 1

![image](https://user-images.githubusercontent.com/103383489/189502137-860898fe-2be5-4359-bb34-4ae2d26bcd9b.png)

---

Lot 2

![image](https://user-images.githubusercontent.com/103383489/189502141-b5ac4624-b6b1-4466-bdfe-7d3718c6115b.png)

---

Lot 3

![image](https://user-images.githubusercontent.com/103383489/189502147-cecbf909-ebeb-411e-8ed1-90403795fc8d.png)

---

* The t-test can be used to determine if the means of two sets of data are significantly different from each other. In this case, we are comparing the means of PSI from All Lots with the Population Mean of 1500. We then do the test again with each individual lot's PSI data against the Population Mean of 1500. Are these results statistically different from the population mean?

---

* Findings for *ALL*: The p-value for all lots is 0.06. This is higher than the significance level of 0.05. 

* Findings for *EACH*: 
1) Lot 1: The p-value is 1. The mean of this sample has the exact same mean as our population sample. Therefore, there is no statistical difference.

2) Lot 2: The p-value is 0.61. This is still higher than the significance level of 0.05.

3) Lot 3: The p-value is 0.042. **This is lower than the significance level of 0.05.** We can no longer assume that the sample mean and population mean are not statistically different (we reject the null hypothesis).

## Study Design: MechaCar vs Competition

* What metric or metrics are you going to test?
* What is the null hypothesis or alternative hypothesis?
* What statistical test would you use to test the hypothesis? And why?
* What data is needed to run the statistical test?
