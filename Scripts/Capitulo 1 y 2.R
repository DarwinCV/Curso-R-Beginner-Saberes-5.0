
# Instructor: Darwin Cubi
# Saberes 5.0

##%######################################################%##
#                                                          #
####               Capitulo 1: Vectores                 ####
#                                                          #
##%######################################################%##


# Generalidades -----------------------------------------------------------

5 + 5  # Esto es una suma

# Esto es un comentario

a <- 5+5 # Asigna el valor a la variable "a"
a


# R como calculadora ------------------------------------------------------

a <- 4; b <- 10; b +a 

log((1+2+3)/4) # logaritmo natural

log( exp(3) ) # logaritmo y exponencial

pi^2 # pi y potencia

factorial(3) # factorial

floor(5.7) # funcion piso
ceiling(5.7) # funcion techo


# Asignaciones ------------------------------------------------------------

a <- 5 # desde el lado izquierod
5 -> a # desde el lado derecho
assign("a", 5) # usando una funcion


a <- 5 # Expresión
a

a <- 2*a   
a



# Tipo de datos -----------------------------------------------------------

1	# Entero

3.5	# Numérico

im <- 3.5 - 8i # Complejo
Im(im) # Parte imaginaria

Re(im) # Parte real


texto <- 'a'
texto <- "a"

class(a)
class(im)
class(texto)

fecha <- lubridate::ymd("2010-01-01") # Fecha  
data_serie <- ts(1:24, start = 2014) # Serie de tiempo  
data_serie

# Crear un factor ordenado
data_factor	<- factor(x= c('alto', 'bajo', 'alto', 'alto'), levels = c('bajo', 'mediano', 'alto')) 
data_factor # Mostrar el factor

TRUE #Logico 

FALSE #Logico

NA # No disponible, perdido

#Casos especiales

1/0 #Infinito

-1/0 #Infinitivo negativo

Inf/Inf #No definido

(0:3)^ Inf

x <- c("11", '12', '13', "14")

as.numeric(x)

as.integer(im)

as.character(data_factor)

as.factor(x)

#casos especiales
library(tidyverse) 
parse_number(c("$1,234.5", "$12.45"))

parse_double(c("1234.5", "12.45"))

parse_integer(c("$1,234.5", "$12.45")) # Error

as.character(lubridate::now())

#Niveles en un factor
factor(c("Alto", "Bajo", "Medio", "Alto"),
       levels = c("Alto", "Medio", "Bajo"), ordered = T)

factor(c("Alto", "Bajo", "Medio bajo", "Alto"),
       levels = c("Alto", "Medio", "Bajo")) 

parse_factor(c("Alto", "Bajo", "Medio", "Alto"), levels = c("Alto", "Medio", "Bajo"))

parse_factor(c("Alto", "Bajo", "Medio bajo", "Alto"),  levels = c("Alto", "Medio", "Bajo"))

#Fechas con Tidyverse
parse_date("2010-10-01")
parse_date("2010/10/01")



# Vectores ----------------------------------------------------------------

x <- 1 
is.vector(x)


x <- c(11, 12, 13, 14) # crea x
x  # presenta x

z <- c('a', "b", 'c') # crea z
z  # presenta z

y <- c(x, 21, 31, x) # crea y
y  # presenta y

rep(z, times=5) # repetir todo el vector 5 veces

rep(z, each=5)  # repetir cada elemento 5 veces


y <- c(10, 20, 30, 40) # Crea y
x + 3*y - 1

z <- c('a', 10, 20, 'x')
z


1:10 # secuencia de 1 a 10, de 1 en 1


seq(from= 0, to= 20, by= 5) # función seq

seq(from= 5, by= 2.5, length.out= 6) # función seq


rep(x= 3, times= 5) # repetir 5 veces el # 3



runif(n= 10, min= 1, max= 5) # Genera aleatorios uniformes

rnorm(n= 10, mean= 100, sd= 10) # Genera aleatorios normales




