# instalar paquete readr
install.packages("readr")

# cargar paquete readr
library(readr)

# buscar la ruta del archivo de csv
file.choose()

repsol <- read.csv("C:\\Users\\javia\\OneDrive\\Escritorio\\UEM\\Segundo curso\\LPE\\REPSOL.csv")

library(ggplot2)
ggplot(repsol, aes(x=Date, y=Average )) + 
  geom_line(colour="orange")  + 
  geom_point( size=0, shape=21, fill="orange", colour="orange") + 
  theme_minimal()
