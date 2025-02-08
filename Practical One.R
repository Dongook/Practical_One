# ============================
# Practical One
# ============================

# ============================
# Question One
# ============================

#Airquality dataset
data = airquality

# Row numbers with missing values
data_missing <- data[!complete.cases(data), ]
rownames(data_missing)

# ============================
# Question Two
# ============================

# Rows without any missing values
data_clean <- data[complete.cases(data), ]

# mean, sd, min, max of Ozone level
mean(data_clean$Ozone)
sd(data_clean$Ozone)
min(data_clean$Ozone)
max(data_clean$Ozone)

# mean, sd, min, max of temperature
mean(data_clean$Temp)
sd(data_clean$Temp)
min(data_clean$Temp)
max(data_clean$Temp)

# ============================
# Question Three
# ============================

# Load the cars dataset
data(cars)

# View the first few rows of the dataset
head(cars)

# Create the design matrix X (with a column of ones for the intercept term)
X <- cbind(1, cars$speed)

# Create the response variable Y (distance to stop)
Y <- cars$dist

# Compute the parameter estimates using the formula (X'X)^(-1) X'Y
beta_hat <- solve(t(X) %*% X) %*% t(X) %*% Y

# Display the parameter estimates
beta_hat

# ============================
# Question Four
# ============================

# Fitting the linear regression model
fit <- lm(cars$dist ~ cars$speed, data = cars)

# Summary of the fitted model
summary(fit)