# Milestone 8: Linear Regression

# Load dataset
housing <- read.csv("training.csv")

# Define dependent (Y) and independent (X) variables
sale_price <- housing$SalePrice
living_area <- housing$GrLivArea

# Build a linear regression model
model <- lm(sale_price ~ living_area, data = housing)

# Show model summary (coefficients, p-values, R-squared)
summary(model)

# Equation: SalePrice = Intercept + Slope * LivingArea
cat("Model Equation:\nSalePrice =", coef(model)[1], "+", coef(model)[2], "* LivingArea\n\n")

# Plot histogram of residuals (to check normality)
hist(residuals(model),
     main = "Histogram of Residuals",
     xlab = "Residuals",
     col = "lightblue",
     border = "white")

# Plot residuals vs. fitted values (to check for randomness)
plot(fitted(model), residuals(model),
     main = "Residuals vs. Fitted Values",
     xlab = "Fitted Sale Price",
     ylab = "Residuals",
     pch = 19, col = "blue")
abline(h = 0, col = "red", lwd = 2)