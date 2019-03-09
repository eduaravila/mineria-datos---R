# funcion sumari

# library(ggplot2)
# Orange$Tree-> factor(Orange$Tree,labels=c("arbol 1","arbol 2","arbol 3","arbol 4","arbol 5"))
# g<-ggplot(Orange,aes(x=Orange$Tree,y=Orange$age))
# g
# nrow
library(utils)
#head solo mostrar los renglones principales
a<-c("a","a",seq(5),"b","b",seq(7,11))

n_as<-c(1,2,NA,4,5,6,NA,7,8,9,NA)

n_as<-n_as[!is.na(n_as)]

random_numeros<-c()
random_numeros<-seq(50)
random_numeros<-replace(random_numeros,random_numeros,floor(runif(50,1,100)))

iris_info<-dimnames(iris)
iris_info
help(iris)
View(iris)
head(iris,6)
iris[1:6,]
nrow(iris)
ncol(iris)



