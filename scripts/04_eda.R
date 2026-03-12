# Summary statistics
summary(data$price)
summary(data$total_revenue)

# Correlation analysis
cor(data$price, data$total_revenue)

# Multiple correlation
numeric_cols <- data[,c("price","discount_percent","quantity_sold","rating","review_count","total_revenue")]

cor(numeric_cols)