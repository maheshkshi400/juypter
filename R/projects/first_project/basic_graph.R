# basic graph

# library ggplot2




library(ggplot2)

ggplot(data = iris,mapping=aes(x = Sepal.Width , y = Petal.Length,col=Species)) + # nolint
  geom_point()

# psych,corrplot

cor(iris[-5])

# correlation 


