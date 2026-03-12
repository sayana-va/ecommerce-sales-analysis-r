library(dplyr)

# Remove duplicates
data <- distinct(data)

# Check missing values
colSums(is.na(data))

# Convert date column
data$order_date <- as.Date(data$order_date, format="%d-%m-%Y")

# Convert categorical variables
data$product_category <- as.factor(data$product_category)
data$customer_region <- as.factor(data$customer_region)
data$payment_method <- as.factor(data$payment_method)

# Check structure again
str(data)