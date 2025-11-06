# Load dataset
> Housing <- read.csv("train.csv")
> 
  > # Check missing values
  > colSums(is.na(Housing))
# Replace missing numeric values with median
> numeric_cols <- sapply(Housing, is.numeric)
> Housing[numeric_cols] <- lapply(Housing[numeric_cols], function(x) {
  +     x[is.na(x)] <- median(x, na.rm = TRUE)
  +     return(x)
  + })
> 
  > # Remove outliers above $500,000
  > Housing_clean <- subset(Housing, SalePrice <= 500000)
  > 
    > # Plot the cleaned SalePrice distribution
    > hist(Housing_clean$SalePrice,
           +      main = "Distribution of Home Sale Prices (Cleaned)",
           +      xlab = "Sale Price (USD)",
           +      ylab = "Number of Houses",
           +      col = "skyblue",
           +      border = "white")