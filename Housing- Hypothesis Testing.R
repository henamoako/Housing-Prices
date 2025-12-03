# Milestone 9: Hypothesis Testing

housing <- read.csv("train.csv")

# --- Test 1: High vs Low/Medium Quality Homes ---

low_med  <- housing$SalePrice[housing$OverallQual <= 6]
high_qual <- housing$SalePrice[housing$OverallQual >= 7]

test1 <- t.test(high_qual, low_med,
                alternative = "greater",
                var.equal = FALSE)
test1

# --- Test 2: Is mean Living Area = 1500 sq ft? ---

living_area <- housing$GrLivArea

test2 <- t.test(living_area, mu = 1500,
                alternative = "two.sided")
test2