library(dplyr)

# Create new variable: revenue per item
data <- data %>%
  mutate(
    revenue_per_item = total_revenue / quantity_sold
  )

# Sales by product category
category_sales <- data %>%
  group_by(product_category) %>%
  summarise(total_sales = sum(total_revenue))

# Sales by region
region_sales <- data %>%
  group_by(customer_region) %>%
  summarise(total_sales = sum(total_revenue))