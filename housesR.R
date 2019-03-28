#install.packages('ggplot2')
library('ggplot2')
library(dplyr)
houses <- read.csv("Desktop/mineria_datos/houses.csv")

summary(houses)
head(houses)
select(houses,Age)
# realizar 3 graficas para houses

# relacion edad de las casas con el precio de la misma
p_l <- ggplot(houses,aes( x= Age, y= Price, colour = Age)) + geom_point()
p_l

# comunmente entre mas cuartos mas baños
p_2 <- ggplot(houses,aes( x= Rooms, y= Bathrooms,fill=Age,geom="histogram")) + geom_point()
p_2


p_3 <- ggplot(houses,aes( x= Precio, y= CercaEscuela,fill=Edad,geom="histogram")) + geom_point()
p_3



nuevos_nombres <- c("consecutivo1","consecutivo2","Precio","TamaÃ±oTerreno","FrenteAgua","Edad","ValorTerreno","Nueva","AireCentralizado","TipoCombustible","TipoCalefaccion","TipoTuberia","AreaEstar","CercaEscuela","Dormitorios","Chimenea","BaÃ±os","habitaciones")

colnames(houses)<- nuevos_nombres

write.csv(houses,"Desktop/mineria_datos/casas.csv")

houses$FrenteAgua<- factor(houses$FrenteAgua,labels=c("Si","No"))
houses$Nueva<- factor(houses$Nueva,labels=c("Si","No"))
houses$TipoCalefaccion<- factor(houses$TipoCalefaccion,labels=c("Aire Caliente","Agua Caliente","Resistencia Electrica"))
houses$TipoTuberia<- factor(houses$TipoTuberia,labels=c("Ninguno","Privado","Publico"))
houses$AireCentralizado<- factor(houses$AireCentralizado,labels=c("Si","No"))

View(houses)

houses<-select(houses,c(-1,-2))


# graficas en clase 

# frecuencia en que se presentan algunos precio en la casas
ggplot(data=houses,aes(x=Precio))+geom_histogram(bins = 40)

# frecuencia en que se presentan algunos precio en la casas con un color de borde en las columnas distintivo para identificar en donde inician y terminan las mismas
ggplot(data=houses,aes(x=Precio))+geom_histogram(bins = 40,fill="lightblue",col="green")

# Grafica de caja para comparar el precio frecuencia y promedio en las casas que se encuentran frente a el agua y las que no
ggplot(data=houses,aes(y=Precio,x=FrenteAgua,fill=FrenteAgua))+ geom_boxplot()

# Grafica de caja para comparar el precio frecuencia y promedio en las casas tiene aire centralizado y las que no
ggplot(data=houses,aes(y=Edad,x=Precio,fill=AireCentralizado))+ geom_boxplot() + labs(title="Comparacion de aire centralizado contra el precio de la casa")


ggplot(data=houses,aes(x=Precio,y=ValorTerreno))+geom_smooth(method="lm",se=F)



