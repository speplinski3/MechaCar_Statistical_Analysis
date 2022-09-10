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

![image](https://user-images.githubusercontent.com/103383489/189496375-e4ca83ee-e15d-45df-b90f-66ea074acade.png)



* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* Is the slope of the linear model considered to be zero? Why or why not?
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
