library(ggplot2)

install.packages("reshape2")
library(reshape2)


cor_matrix <- cor(numeric_cols)

melted <- melt(cor_matrix)

head(melted)


# Bar chart - revenue by category
ggplot(data, aes(x=product_category, y=total_revenue, fill=product_category)) +
  geom_bar(stat="identity") +
  labs(title="Revenue by Product Category")

# Scatter plot
ggplot(data, aes(x=price, y=total_revenue)) +
  geom_point(color="blue") +
  labs(title="Price vs Revenue")

# Box plot
ggplot(data, aes(x=product_category, y=total_revenue)) +
  geom_boxplot(fill="orange") +
  labs(title="Revenue Distribution by Category")

# Heatmap
numeric_cols <- data[,c("price","discount_percent","quantity_sold","rating","review_count","total_revenue")]

cor_matrix <- cor(numeric_cols)

melted <- melt(cor_matrix)

ggplot(melted, aes(Var1, Var2, fill=value)) +
  geom_tile() +
  labs(title="Correlation Heatmap")