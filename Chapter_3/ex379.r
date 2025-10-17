# Exercise 3.7.9 in ISLR

library(ISLR2)
attach(Auto)

# a) produce scatterplot matrix of all variables
pairs(Auto)

Auto_noname <- subset(Auto, select=-name) 
cor(Auto_noname)

# perform linear regression w mpg as response and everything but name as predictors
fit1 <- lm(mpg ~ . - name, data=Auto)
summary(fit1)
# i) Is there a relationship between the predict