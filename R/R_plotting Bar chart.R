counts <- table(mtcars$gear)

print(counts)

barplot(counts,main="Car Distribution",xlab="Numbers of Gears")



