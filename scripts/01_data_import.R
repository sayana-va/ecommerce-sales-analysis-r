# Load libraries
library(readr)

# Import dataset
data <- read_csv("data/ecommerce_sales.csv")

# View first rows
head(data)

# Dataset structure
str(data)

# Summary statistics
summary(data)