#install.packages("dplyr")
#install.packages("ggplot2")
library("dplyr")
library("ggplot2")

X <- c (22,3,7,NA,NA,67) 
print(length((X)))



# Filtrar los valores que sean diferentes a NA_character_
X[!is.na(X)]
Y <- c(1,3,12,NA,33,7,NA,21) 
print(X)
Y[is.na(Y)]<-11
print(Y)

x_2<- c(34,33,65,37,89,NA,43,NA,11,NA,23,NA)
length(x_2[is.na(x_2)])

W <- c (11, 3, 5, NA, 6) 

W[!is.na(W)]<- 'FALSE'
W[is.na(W)]<- 'TRUE' 
print(W)
