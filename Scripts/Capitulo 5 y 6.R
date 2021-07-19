
# Instructor: Darwin Cubi
# Saberes 5.0

##%######################################################%##
#                                                          #
####               Capitulo 5: Dataframes               ####
#                                                          #
##%######################################################%##


# Dataframes --------------------------------------------------------------



Nombre <- c('Ana', 'Berni', 'Carlos')
Edad <- c(20,19,20)
Ciudad <- factor(c('Gye', 'Uio', 'Cue'))
df_1  <- data.frame(Nombre, Edad, Ciudad)
df_1

df_2  <- data.frame( a= Nombre, b= Edad, c= Ciudad)
df_2

df_3  <- data.frame( Nombre= c('Ana', 'Berni', 'Carlos'), 
                     Edad = c(20,19,20), 
                     Ciudad= factor(c('Gye', 'Uio', 'Cue')) )
df_3


rownames(df_3) <- paste('id_',1:3,sep='')
df_3

names(df_3) <- c('Name', 'Age', 'City')
df_3


head(df_3, n=2)
tail(df_3, n=2)
str(df_3)


##%######################################################%##
#                                                          #
####                 Capitulo 6: Listas                 ####
#                                                          #
##%######################################################%##


# Listas ------------------------------------------------------------------

list(1, c(2,3), df_1)

lista_1 <- list(A= 1, B= c(2,3), C= df_1)
lista_1$B
lista_1$C

lista_1[3]

lista_1[[3]]


