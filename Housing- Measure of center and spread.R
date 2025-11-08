# Measures of Center and Spread

# Dataset: Housing

# View the first few rows to confirm the column names
head(Housing)

#  SalePrice and GrLivAre
sale_price <- Housing$SalePrice
living_area <- Housing$GrLivArea

# Sale Price
cat("Mean:", mean(sale_price), "\n")
cat("Median:", median(sale_price), "\n")
cat("Variance:", var(sale_price), "\n")
cat("Standard Deviation:", sd(sale_price), "\n\n")

#  Living Area
cat("Mean:", mean(living_area), "\n")
cat("Median:", median(living_area), "\n")
cat("Variance:", var(living_area), "\n")
cat("Standard Deviation:", sd(living_area), "\n\n")

# Trimmed Mean Example
# (Trims the top and bottom 10% of values to reduce the effect of outliers)
trimmed_mean_price <- mean(sale_price, trim = 0.1)
cat("Trimmed Mean (10%) for Sale Price:", trimmed_mean_price, "\n")
