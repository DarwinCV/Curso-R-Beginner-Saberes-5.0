# Instructor: Darwin Cubi
# Saberes 5.0

##%######################################################%##
#                                                          #
####                Capitulo 3: Matrices                ####
#                                                          #
##%######################################################%##



# Matrices ----------------------------------------------------------------

# Funcion para crear una matriz
# matrix(data, nrow, ncol, byrow = FALSE)

# Construya una matriz con 5 filas que contengan los números del 1 al 10 y byrow = TRUE 
matrix_a <-matrix (1:10, byrow = TRUE, nrow = 5)
matrix_a

# Dimensiones de una matriz
dim(matrix_a)

# Construya una matriz con 5 filas que contengan los números del 1 al 10 y byrow = FALSE 
matrix_b <-matrix(1:10, byrow = FALSE, nrow = 5)
matrix_b

dim (matrix_b)

matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
matrix_c

dim(matrix_c)

# concatenar c (1: 5) a la matriz_a 
matrix_a1 <- cbind(matrix_a, c(1:5))
# Check the dimension
dim(matrix_a1)

matrix_a1


matrix_a2 <-matrix (13:24, byrow = FALSE, ncol = 3)


matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)		
matrix_d <- cbind(matrix_a2, matrix_c)
dim(matrix_d)


#cbind() y rbind()

matrix_c <-matrix(1:12, byrow = FALSE, ncol = 3)
# Crear un vector de 3 valores
add_row <- c(1:3)
# Agregar como fila a la matriz
matrix_c <- rbind(matrix_c, add_row)

dim(matrix_c)


# Manipular una matriz ----------------------------------------------------

matrix_c[1,2] #seleccionar el elemento de la primera fila y segunda columna
matrix_c[1:3,2:3] #seleccionar las filas 1, 2, 3 y columnas 2, 3,
matrix_c[,1] #seleccionar todos los elementos de la primera columna
matrix_c[1,] #seleccionar todos los elementos de la primera fila

#reasignar valores
matrix_c[2,3] <- 20
matrix_c[matrix_c == 4] <- 0  
matrix_c[matrix_c < 10] <- 0 

t(matrix_c) #transponer una matriz

# Operaciones con matrices ------------------------------------------------

#suma
mat1 <- matrix(data = 1:8, nrow = 4, ncol = 4) 
mat2 <- matrix(data = 1:16, nrow = 4, ncol = 4) 

sum <- mat1 + mat2 #Adding our two matrices
print(sum)

#resta

sub <- mat1 - mat2 
print(sub) 

#Multiplicacion por un numero

prod <- mat1*4 
print(prod) 

#Multiplicacion de matrices
prod <- mat1*mat2 
print(prod)

#Division de matrices
div <- mat1 / mat2 # División de mat1 y mat2 
print (div) #Imprimir la división


##%######################################################%##
#                                                          #
####                Capitulo 4: Factores                ####
#                                                          #
##%######################################################%##





# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convertir sex_vector  a factor
factor_sex_vector <- factor(sex_vector)

# imprimir factor_sex_vector
print(factor_sex_vector)


# Variable categorica nominal
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Variable categorica ordinal
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector


# Cambiar niveles de un factor

survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector


#Hacer un summary de un factor

# Build factor_survey_vector with clean levels
survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")
factor_survey_vector

# summary de  survey_vector (vector de caracteres)
summary(survey_vector)

# summary de factor_survey_vector (factor)
summary(factor_survey_vector)


#Comparar factores


survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
levels(factor_survey_vector) <- c("Female", "Male")

# Male
male <- factor_survey_vector[1]

# Female
female <- factor_survey_vector[2]

# cual genero es mayor
male > female


#factores ordenados

speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# convertir a un factor ordenado
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)


# seleccionar nivel 2
da2 <- factor_speed_vector[2]

# seleccionar nivel 5
da5 <- factor_speed_vector[5]

# es el nivel 2 mas rapido que el nivel 5
da2 > da5

