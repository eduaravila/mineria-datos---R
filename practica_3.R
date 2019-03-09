# Ejercicio en clase:
#   
#   0.- Ejecutar este comando: now <- Sys.time()
#   
#   1.- Convertir la siguiente cadena a fecha en 3 objetos:
#     "27-09-2018", "28-09-2015", "29-09-2010"
#   
#   2.- Extraer los años de las fechas anteriores
#   
#   3.- Mostrar los dias de la semana de las mismas fechas
#   
#   4.- Crear una secuencia de fechas desde el 1/1/2017 hasta la fecha por semana
#   
#   5.- Encontrar cuantos dias han pasado desde 1/1/2017 a la fecha
#   
#   6.- Calcular la fecha de hoy dentro de 6 meses
#   
#   7.- Calcular la diferencia de horario entre IST y CST
#   
#   8.- Calcular cuanto tiempo tardaron en completar todos estos ejercicios y 
#   mostrarlo 

#install.packages("lubridate")
library(lubridate)
inicio_programa<- Sys.time()
print('INICIO----> ')
print(inicio_programa)
now <- Sys.time()
str_1<-"27-09-2018"
str_2<-"28-09-2015"
str_3<-"29-09-2010"

str_fechas <- c(str_1,str_2,str_3)

años<- format(as.Date(str_fechas, format = "%d-%m-%Y"), "%Y")
meses<- format(as.Date(str_fechas, format = "%d-%m-%Y"), "%m")
dias<- format(as.Date(str_fechas, format = "%d-%m-%Y"), "%d")
dias_semana<- format(as.Date(str_fechas, format = "%d-%m-%Y"), "%A")

fecha_inicial <- as.Date("2017-1-1")
fecha_final <- as.Date(Sys.time())
i <- fecha_inicial
while(i< fecha_final){
  print(i)
  i <- i+7
}
suma<- 0
x<- fecha_inicial
while(x< fecha_final){
  x <- x+1
  suma <- suma+1
  
}
print(suma)


hoy <- as.Date(Sys.time())
month(hoy) <- month(hoy) + 6
day(hoy) <- days_in_month(hoy)
dentro_seis <- hoy


local_cst<-format(Sys.time(), tz="America/Los_Angeles",usetz=TRUE,"%H")
local_lc <- format(Sys.time(), tz="Europe/London",usetz=TRUE,"%H")




fin_programa<- Sys.time()
print('FIN----> ')
print(fin_programa)



print('diferiencia----> ')
print(fin_programa- inicio_programa)