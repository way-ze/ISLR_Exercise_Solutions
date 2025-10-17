# ISLR Exercise 3.7.8
library(ISLR2)
attach(Auto)

# a)
fit1 <- lm(mpg ~ horsepower)
summary(fit1)
# i) Is there a relationship between the predictor and the response?
# Yes. the p values for the predictor horsepower to the response mpg

# ii) How strong is the relationship between the predictor and the response
# Strong means how correlated.
summary(fit1)$r.squared # = 0.6059

# iii) the relationship is negative since the coefficient is negative.
coefficients(fit1)[2] # gets coefficient for horsepower

# iv) What is the predicted mpg associated with a horsepower of 98
# also say the confidence and prediction intervals
predict(fit1, newdata=data.frame(horsepower = c(98)), interval = "confidence")
# use the level parameter for different length confidence intervals.
#        fit      lwr      upr
# 1 24.46708 23.97308 24.96108
predict(fit1, newdata=data.frame(horsepower = c(98)), interval = "prediction")
# fit     lwr      upr
# 1 24.46708 14.8094 34.12476


# b) plot the response and the predictor and use abline() to display the least
# squares regression line
plot(horsepower, mpg)
abline(fit1)

# c) plot the diagnostic plots
par(mfrow=c(2,2))
plot(fit1)

# Comments: we see residuals vs fitted isn't homoscedastic -> probs linear fit
# isn't the best