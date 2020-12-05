# instalar paquete readr
install.packages("readr")

# cargar paquete readr
library(readr)

# buscar la ruta del archivo de csv
file.choose()

endesa <- read.csv("C:\\Users\\javia\\OneDrive\\Escritorio\\UEM\\Segundo curso\\LPE\\ENDESA.csv")

library(ggplot2)
ggplot(endesa, aes(x=Date, y=Average )) + 
  geom_line(colour="blue")  + 
  geom_point( size=0, shape=21, fill="blue", colour="blue") + 
  theme_minimal()
