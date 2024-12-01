# Define variables
var1 <- 5
var2 <- 11

# Perform comparisons
result1 <- var1 == var2
result2 <- var1 != var2
result3 <- var1 > var2
result4 <- var1 < var2

# Print results
print(result1)
print(result2)
print(result3)
print(result4)

# Call lint function
lintr::lint(expression(var1 < var2), with_defaults(infix_spaces_linter = infix_spaces_linter(around = "both"))) # nolint
