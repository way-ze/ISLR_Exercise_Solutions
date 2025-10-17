library(MASS)
library(ISLR2)


# Task: Boston dataset contains median house value for 506 census tracts.
?Boston
head(Boston)

# Create linear model for medv (median value) and lstat (lower status)
lm.fit <- lm(medv ~ lstat, data=Boston)

# Print basic information
lm.fit

# Print more detailed information
summary(lm.fit)

# See what other bits of information in lm.fit
names(lm.fit)

# Get confidence interval 
confint(lm.fit)

# Predict confidence and prediction intervals
predict(lm.fit, data.frame(lstat = (c(5, 10, 15))), interval="confidence")

predict(lm.fit, data.frame(lstat = (c(5, 10, 15))), interval="prediction")

attach(Boston)
plot(lstat, medv)

# abline can draw any line. Putting lm.fit inside just draws the least squares
abline(lm.fit, lwd=3, col="red")

# Plotting lm.fit directly produces 4 plots. We're gonna make some subplots
par(mfrow=c(2,2))
plot(lm.fit)

# see interaction terms
summary(lm(medv ~ lstat*age), data=Boston)
# lstat:age shows the interaction term.
# lstat*age is NOT MULTIPLICATION but instead
# lstat + age + lstat:age

# For non-linear transformations, we use I(.)
# Can also use poly(.)

