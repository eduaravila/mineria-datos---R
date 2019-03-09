library('ggplot2') # importar la libreria 

head(diamonds) # mostrar las tablas 

p <- ggplot(iris)


p <- ggplot(iris,aes( x= Petal.Length, y= Petal.Width, colour = Species)) + geom_point()
p
# ggsave('grafica.png')

ggplot(iris,aes( x= Petal.Length, y= Petal.Width, colour = Species))+ geom_point() + geom_smooth() + facet_grid(~ Species)

install.packages('plotly')

set.seed(417)

library(plotly)
temp <- rnorm(100,mean = 30, sd=5)
pressure<- rnorm(100)
dtime <- 1:100