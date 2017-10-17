data10 = (read.table("data1.txt", header = TRUE))

data1 = as.matrix(data10)

data20 = (read.table("data2.tzt", header = TRUE))

data2 = as.matrix(data20)

train1 = data1[data1[,5]==1, c(2,3)]
train2 = data2[,c(2,3)]

test = 

library("ISLR")
library("FNN")

fenleiresult = knn(train1,test,data,k=5)
