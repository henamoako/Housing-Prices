# Milestone 10: Boxplot of Sale Price by Overall Quality
> 
  > housing <- read.csv("train.csv")
  > 
    > # Create boxplot
    > boxplot(SalePrice ~ OverallQual,
              +         data = housing,
              +         main = "Sale Price by House Quality Rating",
              +         xlab = "Overall Quality Rating",
              +         ylab = "Sale Price (USD)",
              +         col = "lightblue")
  > 