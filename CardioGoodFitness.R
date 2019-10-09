# setwd("")
mydata = read.csv("CardioGoodFitness.csv", header=TRUE)
head(mydata,10)
attach(mydata)
summary(mydata)
by(mydata, INDICES = Gender, FUN=summary)
hist(Age, col="Red")
boxplot(Age, horizontal = TRUE, col ="Blue", main = "BP of Age")
boxplot(Age ~ Gender, horizontal = TRUE, col = c("Red", "Blue"))

# Freq Dist w.r.t other variables
table(Product, Gender)
table(Product, MaritalStatus)

install.packages("rpivotTable")
library(rpivotTable)
rpivotTable(mydata)

sd(Age)
mean(Age)

install.packages("lattice")
library(lattice)
histogram(~Miles|factor(Product), data=mydata)
