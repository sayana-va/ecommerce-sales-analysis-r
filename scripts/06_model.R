---
  title: "E-commerce Sales Analysis"
author: "Data Analyst"
output: html_document
---
  
  # Introduction
  
  This report analyzes sales data from an e-commerce platform.

# Load Libraries

```{r}
library(readr)
library(dplyr)
library(ggplot2)
```

# Import Dataset

```{r}
data <- read_csv("data/ecommerce_sales.csv")
```

# Data Overview

```{r}
summary(data)
str(data)



# Sales Visualization

```{r}
ggplot(data, aes(x = product_category, y = total_revenue)) +
  geom_bar(stat = "identity", fill = "blue")
```
```