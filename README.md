# MechaCar Statistucal Analysis

## Overview 
In this analysis we give a variety of analyses based on data collected from MechaCar's tests.

## Linear Regression to Predict MPG

[image of linear regression summary]

From our weights we see that while the slope of our multivariable model is non-zero, only 3/6 variables contributing significantly is a sign that our current model may be overfit with unneccessary information. We should likely focus in on a model focusing on vehicle length and ground clearance to give more accurate pedictions.

## Summary Statistics on Suspension Coils

According to design specifications, the MechaCar requires a variance in the PSI of suspension coils under 100 PSI. Looking at the total dataset we seem to be in line with these specifications.

[image of overall]

However, when we break these staistics down by lots we see that the variance of PSI in lot 3 is far above the required specifications, and thus needs to be discarded. Going forward, we must make sure to check specifications lot by lot as there appears to be the potential for large discrepancies between lots.

[image of lot summary]

## T-Tests on Suspension Coils

A one sample T-test shows us that our sample of Suspension Coils has a mean of 1498.78 and that this mean is not statistically different than the overall population p-value ~ 0.

[image of t-test]

Breaking down by lots, we see that each lot also is also not statistically far from its average with p-values close to 0 across the board.

[images of three t-tests]

## Study Design: MechaCar vs Competition

To test our product against the competition, we should focus on fuel efficiency grouping by model types (sedan, truck, SUV, etc.). We should test the difference between our model and comprable competitor's models across these two metrics. Our hypothesis is that the MechaCar has higher miles per gallon than competitors i.e. the average of (MechaCarMPG - ComptetitorMPG) >> 0. The null hypothesis then is that (MechaCarMPG - ComptetitorMPG) ~ 0 or <= 0. We should run t-tests on our overall population of MechaCars, and population-specific t-tests on each model type to show that the average difference between MPGs across multiple trials is significantly higher than 0. In order to run this test, we need repeated trials of Fuel Usage data for the MechaCar and for our most significant competitors using a number of different model types.