```R
# Improved code to handle invalid column names gracefully
df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
cols_to_select <- c("a", "b", "d")

# Solution 1: Using %in% to check column existence
valid_cols <- cols_to_select[cols_to_select %in% names(df)]
subset_df <- df[, valid_cols]

# Solution 2: Using tryCatch to handle errors
subset_df <- tryCatch({
  df[, cols_to_select],
  error = function(e) {
    warning("Error subsetting data frame: ", e$message)
    df  # Or return a default value or handle the error differently
  }
})

#print the subsets to view the results
print(subset_df)
```