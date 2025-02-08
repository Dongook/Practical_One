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
