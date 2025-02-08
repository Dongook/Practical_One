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
