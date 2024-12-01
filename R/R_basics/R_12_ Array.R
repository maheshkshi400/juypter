vector1 <- c(6, 2, 1)
vector2 <- c(10, 16, 22, 43, 15, 25)

result <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(result)


print(result[1, 1, 1])

print(result[3, 3, 1])


mat1 <- result[2, 2, 1]
print(mat1)

mat2 <- result[3, 3, 1]
print(mat2)

print(mat1 + mat2)






