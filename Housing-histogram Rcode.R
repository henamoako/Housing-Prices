# Importing the data
Housing <- read.csv("train.csv")

# Plot histogram for SalePrice
hist(Housing$SalePrice,
     main = "Distribution of Home Sale Prices",
     xlab = "Sale Price (USD)",
     ylab = "Number of Houses",
     col = "skyblue",
     border = "white")
