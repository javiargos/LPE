#21931310 JAVIER ARGOS GONZALEZ ####
#Title: Navigating RStudio UI (user interface)####
#File: Navigating throught R UI
#Project: R_EssT_1; R Essential Training, Part 1:
#         Wrangling and visualizing Data

## canastos

#INSTALL AND LOAD PACKAGES####
library(datasets) #importing datasets

#LOAD AND PREPARE DATA####
?iris #help about iris dataset
df <- iris #create var called df and assign iris dataset
head(df) #print first elements 
df

#ANALYNE DATA#####
hist(df$Petal.Width,
     main = "European university - Histogram of petal Width",
     xlab = "Petal Width (in cm)")

#EXERCISE (Petal) and (Species)

# CLEAN UP ####

#clear enviroment
rm(list = ls())

#clear packages
detach("package:datasets", unload = TRUE) #for base

#clear plots
graphics.off() #clear plots, closas all graphics devices

#clear console
cat("\014") #ctrl+L