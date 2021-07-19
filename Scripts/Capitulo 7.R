# Instructor: Darwin Cubi
# Saberes 5.0

##%######################################################%##
#                                                          #
####              Capitulo 8: Programacion              ####
#                                                          #
##%######################################################%##



# IF, ELSE, ELSE IF -------------------------------------------------------

#Estructura del If else

# if (condición) {
#   Expr1 
# } else {
#   Expr2
# }

# Crear vector cantidad 
cantidad <- 25 
# Establecer la declaración is-else 
if (cantidad> 20) { 
  print ('¡Vendiste mucho!') 
} else { 
  print ('No es suficiente para hoy')   
}


#Segunda estructura del IF else

# if (condition1) { 
#   expr1
# } else if (condition2) {
#   expr2
# } else if  (condition3) {
#   expr3
# } else {
#   expr4
# }

# Crear 
cantidad <- 10 
# Crear declaración de condición múltiple 
if (cantidad <20) { 
  print ('No es suficiente para hoy') 
} else if (cantidad> 20 & cantidad <= 30) { 
  print ('Día promedio') 
} else { 
  print ('¡Qué gran día!') 
}


# Categorías		IVA
#     A          8%
#     B	        10%
#     C	        20%

categoria <- 'A' 
precio <- 10 
if (categoria == 'A') { 
  cat ('Se aplica una tasa de iva del 8%.', 'El precio total es', precio * 1.08)   
} else if (categoria == 'B') { 
  cat ('Se aplica una tasa de iva del 10%.', 'El precio total es', precio * 1.10)   
} else { 
  cat ('Se aplica una tasa de iva del 20%.', ' El precio total es ', precio * 1.20)   
}


# Loops -------------------------------------------------------------------


#Estructura 

# For (i in vector) {
#   Exp	
# }


# Crear fruta vector 
fruta <- c('Manzana', 'Naranja', 'Maracuyá', 'Plátano') 
# Crear la declaración 
for (i in fruta) { 
  print (i) 
}

# Crear una lista vacia
list <- c()
# Create a for statement to populate the list
for (i in seq(1, 4, by=1)) {
  list[[i]] <- i*i
}
print(list)


#Bucle sobre una lista

# Cree una lista con tres vectores 
fruta <- list (Basket = c ('Manzana', 'Naranja', 'Maracuyá', 'Plátano'), 
               Dinero = c (10, 12, 15), compra = FALSE) 
for (p in fruta) { 
  print (p) 
}


#Bucle sobre una matriz

# Create a matrix
mat <- matrix(data = seq(10, 20, by=1), nrow = 6, ncol =2)
# Create the loop with r and c to iterate over the matrix
for (r in 1:nrow(mat)) {  
  for (c in 1:ncol(mat))  {
    print(paste("Row", r, "and column",c, "have values of", mat[r,c])) }
}



# While  ------------------------------------------------------------------

#Estructura
# while (condition) {
#   Exp	
# }

#Crea una variable con valor 1
comenzar <- 1

#Crea el bucle
while (comenzar <= 10) {
  
  # Mira quienes somos  
  cat ('Este es el número de bucle', comenzar)
  
  #agregar 1 a la variable begin después de cada ciclo
  print (comenzar)
  
  comenzar <- comenzar + 1
}


set.seed(123)
# Establecer acciones y precios variables
stock <- 50
precio <- 50

# La variable de bucle cuenta el número de bucles 
bucle <- 1

# Establecer la declaración while
while (precio> 45) {
  
  # Crea un precio aleatorio entre 40 y 60
  precio <- stock + sample(-10:10, 1)
  
  # Imprime el número de bucle
  print (bucle)
  
  # Cuente el número de bucle
  bucle = bucle +1 
  
  
}



# Familia Apply -----------------------------------------------------------

#Apply
m1 <- matrix(C<-(1:10),nrow=5, ncol=6)
m1
a_m1 <- apply(m1, 2, sum)
a_m1

a_m2 <- apply(m1, 1, sum)
a_m2


#Lappy

movies <- c("SPYDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
str(movies_lower) 

class(movies_lower)

#convertir una lista  a vector
movies_lower <-unlist(lapply(movies,tolower))
str(movies_lower)


#Sapply

dt <- cars
lmn_cars <- lapply(dt, min)
smn_cars <- sapply(dt, min)
lmn_cars
smn_cars

class(lmn_cars)
class(smn_cars)


lmxcars <- lapply(dt, max)
smxcars <- sapply(dt, max)
lmxcars
smxcars


avg <- function(x) {  
  ( min(x) + max(x) ) / 2}
fcars <- sapply(dt, avg)
fcars




below_ave <- function(x) {  
  ave <- mean(x) 
  return(x[x > ave])
}
dt_s<- sapply(dt, below_ave)
dt_l<- lapply(dt, below_ave)
identical(dt_s, dt_l)



# Tapply ------------------------------------------------------------------

data(iris)
tapply(iris$Sepal.Width, iris$Species, median)



# Crear una funcion -------------------------------------------------------

# Estructura de una funcion

# myFuctionName <- function () {
#   > MI CÓDIGO VA AQUÍ <
# }


integerVector <- function(n) {
  v <- c(1:n)
  v
}

integerVector( )

integerVector(10)

x <- integerVector(10)
x


integerVectorDef <- function(n = 10) {
  v <- c(1:n)
  v
}

integerVectorDef( )
integerVectorDef(n = 3)


select10 <- function(n) {
  v <- c() # crear un vector vacio
  for(i in 1:n) { # repetir el proceso n veces
    v = rbind(v, sample(1:10, size = 1)) # agregar valores aleatorios al vector v
  } 
  v # valor final devuelto
}

select10()
select10(n = 3)
select10(n = 9)

select10 <- function(n) {
  v <- c() # crear un vector vacio
  for(i in 1:n) { # repetir el proceso n veces
    v = c(v, sample(1:10, size = 1)) # agregar valores aleatorios al vector v
  } 
  v # valor final devuelto
}

select10(n = 3)
select10(n = 9)


selectAny <- function(size, mini, maxi) {
  v <- c() # crear un vector vacio
  for(i in 1:size) { # repetir hasta "size" veces
    v <- rbind(v, sample(mini:maxi, size = 1)) # agregar valores aleatorios al vector v
  } # end loop
  v # output the vector
}


selectAny(size = 10, mini = 3, maxi = 10)
