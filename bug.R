```R
# This code attempts to subset a data frame using a character vector that contains some invalid column names.
df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")
subset_df <- df[, cols_to_select]
```