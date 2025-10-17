# Simulate linear relationship
# example: Y = 2 + 3X + eps

# Task: fit both linear and cubic regression models and compare training
# and test RSS.

set.seed(123)

# take 100 points for training as in exercise
n_train <- 100

# take 1000 points for testing
n_test <- 1000

# define sigma
sigma <- 1

# Take uni
x_train <- runif(n_train, -2, 2)
x_test <- runif(n_test, -2, 2)

# simulate some points for train and test using normal distr
y_train <- 2 + 3*x_train + rnorm(n_train, 0, sigma)
y_test <- 2 + 3*x_test + rnorm(n_test, 0, sigma)
# plot(x_train, y_train)

fit_linear <- lm(y_train ~ x_train)

fit_cubic <- lm(y_train ~ poly(x_train, 3))

y_pred_cubic <- predict(fit_cubic)
A
lines(x_train, y_pred_cubic)
