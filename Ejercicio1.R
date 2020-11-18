#EJERCICIO1 LPE####
#Leer archivo csv generado en clase y reponder preguntas

#CARGAMOS EL DATASET####
#Mediante la funcion file.choose elije de manera manual el dataset
dataSet <- read.csv(file.choose(),header = TRUE, sep = ',')
print(dataSet) #imprime dataset
length(dataSet) #filas del dataset 

#Damos nombre a las columnas del dataset####
names (dataSet) = c("Fecha", "Mail", "MiDescripcion", "Hyflex", "Nombre", "Mes", "Year",
                    "Apellido", "Descripcion_compañero", "Repetidor", "Expediente", "UsuarioGit", "NivelProgra",
                    "Presentacion", "DigitalBlock")

#Se puede tambien renombrar una unica columna
#names(dataSet)[names(dataSet)=='Email.Address']<-'Correo'


#1 El alumno más viejo####
attach(dataSet)
min(Year)
which.min(Year)

aViejo <- subset(dataSet, Year == min(Year), "Nombre")
aViejo

#2 Numero de cumples en Noviembre####

cumple <- sum(dataSet$Mes == "11")
cumple

#3 Separar por expediente par o impar####
pares <- subset(dataSet, Expediente%%2 == 0, "Nombre")
pares

impares <- subset(dataSet, Expediente%%2 != 0, "Nombre")
impares

#4 Palabra mas usada y significado####

#library(tidyverse)
#library(tokenizers)

#tabla <- table(palabras)
#tabla <- data_frame(palabra = names(dataSet), recuento = as.numeric(dataSet))
#tabla

#5 Porcentaje de exposiciones realizadas####
ExpoSi <- subset(dataSet, Presentacion == 0, "Nombre")
ExpoSi
sum(dataSet$Presentacion == 0)
porcentaje <- (sum(dataSet$Presentacion == 0)/11)*100 
porcentaje

#6 Numero y listado de alumnos presenciales####
alumPresen <- subset(dataSet, Hyflex == 0, "Nombre")
alumPresen

sumPresen <- sum(dataSet$Hyflex == 0)
sumPresen
# Numero y listado de alumnos en Hyflex####
Hf <- subset(dataSet, Hyflex == 1, "Nombre")
Hf

sumHf <- sum(dataSet$Hyflex == 1)
sumHf

