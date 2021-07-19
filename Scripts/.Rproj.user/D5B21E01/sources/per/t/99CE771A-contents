
# Instructor: Darwin Cubi
# Saberes 5.0


##%######################################################%##
#                                                          #
####           Capitulo 8: Analisis de datos            ####
#                                                          #
##%######################################################%##


library(openxlsx)

data_banco <- read.xlsx("Data_Banco.xlsx", sheet = "Data")

write.xlsx( mtcars, "Exports/mtcars.xlsx" ) # para guardar datos

data_sucursal <- read.xlsx(xlsxFile = "Data_Banco.xlsx", sheet = "Data_Sucursal")


# Convertir el data_banco a un tibble
data_banco <- as_tibble( data_banco)
str(data_banco)
# Muestra data_banco
data_banco


# Select() ----------------------------------------------------------------


data_banco$Monto

select(data_banco, Monto)

# Seleccionar las columnas Transaccion, Tiempo_Servicio_seg del data.frame data_banco
# Note que como no se asignó, R evalúa la expresión y presenta el resultado
select( data_banco, Transaccion, Tiempo_Servicio_seg)


library(magrittr)

data_banco %>% names
names(data_banco)
data_banco %>% dim
dim(data_banco)

data_banco %>% names %>% length

length( names( data_banco ))

head( data_banco, n=5)
data_banco %>% head( n= 5)

select( data_banco, Transaccion, Tiempo_Servicio_seg)
data_banco %>% select(Transaccion, Tiempo_Servicio_seg)


# Seleccionar la columna Tiempo_Servicio_seg y obtener 
# un boxplot
# boxplot(data_banco$Tiempo_Servicio_seg) ## Base de R

data_banco %>% 
  select(Tiempo_Servicio_seg)%>% 
  boxplot


# Seleccionar la columna Tiempo_Servicio_seg y obtener los fivenumbers de Tukey
data_banco %$% fivenum(Tiempo_Servicio_seg, na.rm= TRUE)



# Seleccionar y ver en el visor de datos de RStudio
data_banco %>% 
  select( Transaccion, Tiempo_Servicio_seg) %>% 
  View


data_banco %>% 
  select(Tiempo_Servicio_seg) %>% 
  fivenum(na.rm=TRUE)

# data_banco$Sucursal R lo transforma a vector

# Seleccionar todas las columnas menos Cajero
data_banco %>% select( -Cajero) %>% View


# Seleccionar todas las columnas cuyo nombre contenga una "r" o un "sa"
data_banco %>% select( matches("r?sa")) %>% View


data_banco %>% select( Monto, Sucursal, Transaccion)

data_banco %>% slice( c(20, 34, 56))



# Operadores logicos ------------------------------------------------------

library(tidyverse)
library(openxlsx)
library(magrittr)

3 == 4 # Igualdad
3 != 4 # Desigualdad
3 > 4  # Mayor que
3 <= 4 # Menor igual que
! FALSE  # No
TRUE & FALSE  # Y
TRUE & TRUE  # Y
TRUE | FALSE  # O
FALSE | FALSE  # O

TRUE & NA 
TRUE | NA 

xor(TRUE,TRUE) # Ó excluyente
xor(FALSE,TRUE) # Ó excluyente


# Filter() ----------------------------------------------------------------


# Filtrar las filas correspondientes a la sucursal 62
data_banco %>% filter( Sucursal== 62 ) %>% View

# Filtrar las filas correspondientes a la sucursal 62 y hayan durado más de 120 segundos
data_banco %>% 
  filter( Sucursal== 62 & Tiempo_Servicio_seg > 120 ) %>% 
  View

# Filtrar las filas correspondientes a la sucursal 62 y hayan durado más de 120 segundos
data_banco %>% 
  filter( Sucursal== 62, Tiempo_Servicio_seg > 120 ) %>% 
  View

# Filtrar las filas correspondientes a la sucursal 62,  hayan durado 
# más de 120 segundos y la evaluación a la satisfacción sea Bueno
data_banco %>% 
  filter( Sucursal== 62 & 
            Tiempo_Servicio_seg > 120 & 
            Satisfaccion== "Bueno") %>% 
  View



# Filtrar las filas correspondientes a la sucursal 62, 
# hayan durado más de 120 segundos y la evaluación a
# la satisfacción sea Bueno, pero muestrame sólo las columnas
# Sucursal, Tiempo, Transaccion y Satisfacc
data_banco %>% 
  filter( Sucursal== 62 & 
            Tiempo_Servicio_seg > 120 & 
            Satisfaccion== "Bueno") %>% 
  select( Sucursal, Tiempo_Servicio_seg, 
          Transaccion, Satisfaccion) %>% 
  View


View( select( filter(data_banco, Sucursal== 62 & 
                       Tiempo_Servicio_seg > 120 & 
                       Satisfaccion== "Bueno") ,
              Sucursal, Tiempo_Servicio_seg, 
              Transaccion, Satisfaccion ) )

dfintermedio <- filter(data_banco, Sucursal== 62 & 
                         Tiempo_Servicio_seg > 120 & 
                         Satisfaccion== "Bueno")

View( select( dfintermedio ,
              Sucursal, Tiempo_Servicio_seg, 
              Transaccion, Satisfaccion ) )


# Con el data banco
# Filtrar las filas correspondientes a la sucursal 85
# calcular la correlacion entre Tiempo_Servicio_seg y Monto
data_banco %>% # Operador pipe total
  filter( Sucursal== 85 ) %$%  # Operador pipe para seleccion de columnas
  cor(Tiempo_Servicio_seg, as.numeric(Monto))



# Arrange() ---------------------------------------------------------------


# Ordenar por la satisfaccion
data_banco %>% arrange( Satisfaccion ) %>% View


# Ordenar cada Transaccion y dentro de cada transaccion de mayor a menor por tiempo de servicio
data_banco %>% arrange( Transaccion, desc(Tiempo_Servicio_seg) ) %>% View


# Mutate() ----------------------------------------------------------------


# Crear una nueva columna con el tiempo en minutos
data_banco %>%
  mutate(Tiempo_Servicio_Min= Tiempo_Servicio_seg/60) %>% 
  View

data_banco %>% View

df_erroneo <- data_banco %>%
  mutate(Tiempo_Servicio_Min= Tiempo_Servicio_seg/60) %>% 
  View

df_erroneo %>% View

# Crear una nueva columna con el tiempo en minutos
data_banco <- data_banco %>%
  mutate(Tiempo_Servicio_Min= Tiempo_Servicio_seg/60)
# Mostrar
data_banco %>%  View


# Transmute() -------------------------------------------------------------

# Crear una nueva columna con el tiempo en minutos
data_banco %>%
  transmute(Tiempo_Servicio_Min= Tiempo_Servicio_seg/60)




#EJEMPLOS

str(data_banco)

# stringr::str_ ## Funciones para manipular texto

data_banco <- data_banco %>% 
  mutate(Monto= str_replace(Monto, ",", "." )) %>% 
  mutate(
    Monto= parse_number(Monto),
    Sucursal= as.character( Sucursal),
    Cajero= as.character( Cajero), 
    Satisfaccion= parse_factor( 
      Satisfaccion,
      levels =  c('Muy Malo', 'Malo', 'Regular', 'Bueno', 'Muy Bueno'),
      ordered = TRUE
    )
  )


data_banco %>% 
  mutate( Modular= round(Monto, 0) %% 2 ) %>% 
  View


# Medidas de tendencia central --------------------------------------------

mean( data_banco$Tiempo_Servicio_seg, na.rm = TRUE) ## Base R
data_banco %$% mean(Tiempo_Servicio_seg, na.rm = TRUE)

# Media acotada al 10%
data_banco %$% mean(Tiempo_Servicio_seg, trim = 0.05, na.rm = TRUE)

# Mediana
data_banco %$% median(Tiempo_Servicio_seg, na.rm = TRUE)



# Media de Huber
# MASS::huber(data_banco$Tiempo_Servicio_seg)$mu ## Base R
data_banco %$% 
  MASS::huber(Tiempo_Servicio_seg) %>% 
  as.data.frame() %>% 
  select(mu)

library('modeest')
mlv(data_banco$Tiempo_Servicio_seg) #moda


# Medidas de Posicion -----------------------------------------------------


# Minimo y Máximo
min(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)
max(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)
# Cuartiles
quantile(data_banco$Tiempo_Servicio_seg , probs = c(0.25, 0.50, 0.75))
# Deciles
quantile(data_banco$Tiempo_Servicio_seg , probs = seq(from = 0.1, to = 1, by = 0.1))


# Centil 5% y 95%
quantile(data_banco$Tiempo_Servicio_seg , probs = c(0.05, 0.95))


boxplot(data_banco$Tiempo_Servicio_seg, main= "Boxplot para Tiempo de Servicio (seg)", ylab= "T")

library("ggplot2")
ggplot(data = data_banco, aes(x = "", y = Tiempo_Servicio_seg)) +  geom_boxplot() +
  coord_flip()


# Medidas de dispersion ---------------------------------------------------


# Varianza
var(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)

# Desviacion
sd(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)

# Promedio
mean(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)

# Mediana de las desviaciones absolutas
mad(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)

# Rango intercuartil
IQR(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)

# Min Max
range(data_banco$Tiempo_Servicio_seg, na.rm = TRUE)

# Rango
diff(range(data_banco$Tiempo_Servicio_seg, na.rm = TRUE))


# Obtener la medidas descriptivas del tiempo de servicio
data_banco %>% 
  summarise(
    MEDIA= mean(Tiempo_Servicio_seg, na.rm=TRUE), 
    MEDIA_ACOT= mean(Tiempo_Servicio_seg, na.rm = TRUE, trim = 0.05),
    DESV= sd(Tiempo_Servicio_seg, na.rm=TRUE), 
    RANGO= diff(range(Tiempo_Servicio_seg)),
    CANTIDAD= n() # n() permite contar el número de filas
  )


# Obtener la media del tiempo de servicio
data_banco %>% 
  summarise_at( vars(Tiempo_Servicio_seg),
                list(
                  MEDIA= ~mean(., na.rm=TRUE), 
                  MEDIA_ACOT= ~mean(., na.rm = TRUE, trim = 0.05),
                  DESV= ~sd(., na.rm=TRUE), 
                  RANGO= ~diff(range(.)),
                  CANTIDAD= ~n()
                )
  )


# Obtener la media del tiempo de servicio y el Monto
data_banco %>% 
  summarise_at( vars(Tiempo_Servicio_seg, Monto),
                list(
                  MEDIA= ~round( mean(., na.rm=TRUE), 2) , 
                  DESV= ~sd(., na.rm = TRUE),
                  CANTIDAD= ~n()
                )
  ) %>%  View

# Obtener la media del tiempo de servicio y el Monto
data_banco %>% 
  summarise_if( is.numeric,
                list(
                  MEDIA= ~mean(., na.rm=TRUE), 
                  MEDIA_ACOT= ~mean(., na.rm = TRUE, trim = 0.05)
                )
  ) %>%  View


# Obtener medidas de tendencia central para el tiempo de servicio para cada tipo de transaccion
data_banco %>% 
  group_by(Transaccion) %>%
  summarise( 
    MEDIA= mean(Tiempo_Servicio_seg, na.rm=TRUE), 
    MEDIA_ACOT= mean(Tiempo_Servicio_seg, na.rm = TRUE, trim = 0.05),
    DESV= sd(Tiempo_Servicio_seg, na.rm=TRUE), 
    CANTIDAD= n() 
  )







