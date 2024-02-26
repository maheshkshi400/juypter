# piechart

slices <- c(10,12,4,16,8)

lbls <- c("Mango","oranges","Banana","jack","pine")

pie(slices,lbls,main="pie charts of fruit")


# 3-D piechart

library(plotrix)

slices <- c(10,12,4,16,8)

lbls <- c("Mango","oranges","Banana","jack","pine")

pie3D(slices,labels=lbls,explode=0.1,main="pie charts of fruit")
