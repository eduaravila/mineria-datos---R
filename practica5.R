for(i in 1:7){
 print(i^3)
}
i<-0
while(i<1){
  i<-rnorm(1)
  print(i)
}
i<-0
while(i<1){
  i<-rnorm(1)
  if(i<0){
    next()
  }
  else{
    print(i)
    
  }
}
final<-1000000
x<-1
i<-1
while(x<final){
  i<-i +1
  x<-x*i
  print(x)
}

juego<- function(maximo){
  i<- 0
  while(i<maximo){
  total<- 0
  ran_uno<-0
  ran_uno<- round(runif(2,2,12))
  
  
  total<- (ran_uno[1] * ran_uno[2])
  
  print("Resultado de la multiplacacion de")
  print(ran_uno[1])
  print("*")
  print(ran_uno[2])
    
  
  numero_uno<- as.integer(readline())
  total_usuario<- numero_uno
  print(total_usuario)
  print(total)
  if(total_usuario == total){
    print("Tu respuesta")
    print(numero_uno)
    print("Es correcta")
    i<- i +1
    print("Te restan")
    print(maximo-i)
  }
  else{
    print("Respuesta incorrecta")
    break
  }
  }
 
}
juego(5)

juego_aleatorio <- function(maximo){
  i<- 0
  print("Obtener 5 valores aleatorios el 1 al 10")
  while(i< maximo){
  rand_num = floor(runif(1,1,10))
  print(rand_num)
  x <- scan("",what="int")

  if(x == rand_num){
    print("Valor correcto ^")
    i<-i+1
    print("Restantes ")
    print(maximo -i)
  }
  else{
    print("Valor incorrecto X")
    break
  }
  }
  print("Juego finalizado")
}


juego_aleatorio(5)
