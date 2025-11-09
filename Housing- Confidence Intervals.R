# Milestone 7: Confidence Intervals

# Load dataset
housing <- read.csv("train.csv")

# Select quantitative variables
sale_price <- housing$SalePrice
living_area <- housing$GrLivArea

# --- Sale Price ---
n1 <- length(sale_price)
mean1 <- mean(sale_price)
sd1 <- sd(sale_price)

# 95% Confidence Interval for Sale Price
error1 <- qt(0.975, df = n1 - 1) * (sd1 / sqrt(n1))
lower1 <- mean1 - error1
upper1 <- mean1 + error1
cat("95% Confidence Interval for Sale Price: [", lower1, ",", upper1, "]\n")

# --- Living Area ---
n2 <- length(living_area)
mean2 <- mean(living_area)
sd2 <- sd(living_area)

# 95% Confidence Interval for Living Area
error2 <- qt(0.975, df = n2 - 1) * (sd2 / sqrt(n2))
lower2 <- mean2 - error2
upper2 <- mean2 + error2
cat("95% Confidence Interval for Living Area: [", lower2, ",", upper2, "]\n")