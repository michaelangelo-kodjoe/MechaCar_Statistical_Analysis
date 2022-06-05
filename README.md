# MechaCar_Statistical_Analysis

## Overview of Project
The goal of this project is to analyze certain metrics that can affect the manufacturing of a new car prototype and compare vehicle performance across different manufacturer lots.

## Linear Regression to Predict MPG
Using the MechaCar dataset, a linear regresseion model is created to find out what is causing the production problems blocking the manufacturing team’s progress.
To analyze this data, two linear regression models were created.
From the first model, it can be observed that, some variables have a correlation with MPG of a vehicle. The R - squared value of 0.71 which means that roughly 70% of the variablilty of our dependent variable MPG which is approximately the square of our p-value which is 5.35 x 10 $^{11}$.

<img width="765" alt="fIrst_model" src="https://user-images.githubusercontent.com/85206793/172032325-3c32b728-dcc4-45e7-beb4-601893a754e2.png">


We then ask ourselves these questions:
* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  From our regression model, vehicle length and ground clearance procvided the least random amount of variance to the dataset which have p - values less 
  than the significance level of 0.05%.
* Is the slope of the linear model considered to be zero?

  Since the p-value of our linear regression analysis is 5.35 x 10 $^{11}$, it is much smaller than our assumed significance level of 0.05%. Therefore,       we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
* Does this linear model predict mpg of MechaCar prototypes effectively?

  This linear model does not predict the mpg of the prototypes effecively because there are many other vavaribles that could generalize and predict future 
  prototpyes more effectively. For example the weight of MechaCar prototypes.

## Summary Statistics on Suspension Coils
The variance from the analysis shows the design specifications for the MechaCar suspension coils do not exceed 100 pounds per square inch for all manufacturing lots.

<img width="397" alt="Total_Breakdown_of_lots" src="https://user-images.githubusercontent.com/85206793/172062207-401dcb46-6a81-4ad1-9975-5f716afa1c8e.png">

However, when separated into three lots, the third lot demonstrates a much higher variance. Because the lots are chosen randomly, there is a possiblity that a third lot does not meet the necessary suspension coils requirement for production.
<img width="518" alt="Breakdown_per_lot" src="https://user-images.githubusercontent.com/85206793/172062202-5a03c9b3-6527-490a-ac18-581d4f01bdca.png"> 

## T-Tests on Suspension Coils
<img width="671" alt="T test_showing_difference_from_mean" src="https://user-images.githubusercontent.com/85206793/172063692-5559272f-fe53-49f7-a94a-71af688a9aae.png">
At a significance level of 0.05, we fail to reject the null hypothesis since the p-value equals 0.06. Therefore, we cannot abandon the fact that the sample mean may be equivalent to the true population mean. Another thing to observe is the narrow confidence interval. Although a narrower confidence interval implies that there is a smaller chance of obtaining an observation within that interval, it provides greater accuracy than a wider interval.

## T-Tests on Three Other Lots
<img width="671" alt="T test_for_each_manufacturing_lot" src="https://user-images.githubusercontent.com/85206793/172061769-9ab7fdf5-33c0-4b33-a1cb-7629d0e70365.png">

Observing Lot 1, putting our significance level of 0.05, we fail to reject the null hypothesis since the p-value equals 1. An correlation to note between p-value and confidence intervals is that as the p-values get larger, the confidence interval becomes smaller, which means, this may lead to more precision in predicting the true population mean.

Observing Lot 2 also at a significance level of 0.05, we fail to reject the null hypthesis again since the p-value equals 0.6072. The second lot also has a relatively small confidence interval.

Lastly with Lot 3 also at a significance level of 0.05, we can reject the null hypothesis since the p-value equals 0.04168. The mean of this sample is also significantly smaller in comparison to the previous two lots.

## Study Design: MechaCar vs. Competition
Another statistical study that can be performed to determine MechaCar's position against its competition is to perform a linear regression on city and highway fuel efficiency to establish the correlation between these variables. With the current situation around the world with Gas, it is an important feature to look at to find a. way to reduce fuel efficiency while giving optimum perfomance. This way consumers are able to save money while purchasing MechaCar vehicles versus the competition. The metrics that can be included in this analysis are:

* City and highway fuel efficiency
* Horse power
* Vehicle weight
* Other Drivetrain (4WD, RWD or FWD)
