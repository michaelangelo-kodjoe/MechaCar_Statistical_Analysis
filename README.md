# MechaCar_Statistical_Analysis

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
<img width="671" alt="T test_showing_difference_from_mean" src="https://user-images.githubusercontent.com/85206793/172061847-37ad6bbf-ecbb-4bb3-aae8-ffa09f522331.png">

## T-Tests on Suspension Coils
<img width="671" alt="T test_for_each_manufacturing_lot" src="https://user-images.githubusercontent.com/85206793/172061769-9ab7fdf5-33c0-4b33-a1cb-7629d0e70365.png">
